<?php

/**
 * Copyright (C) 2007,2008  Arie Nugraha (dicarve@yahoo.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

/* Location Management section */

// key to authenticate
define('INDEX_AUTH', '1');
// key to get full database access
define('DB_ACCESS', 'fa');

// main system configuration
require '../../../sysconfig.inc.php';
// IP based access limitation
require LIB . 'ip_based_access.inc.php';
do_checkIP('smc');
do_checkIP('smc-masterfile');
// start the session
require SB . 'admin/default/session.inc.php';
require SB . 'admin/default/session_check.inc.php';
require SIMBIO . 'simbio_GUI/table/simbio_table.inc.php';
require SIMBIO . 'simbio_GUI/form_maker/simbio_form_table_AJAX.inc.php';
require SIMBIO . 'simbio_GUI/paging/simbio_paging.inc.php';
require SIMBIO . 'simbio_DB/datagrid/simbio_dbgrid.inc.php';
require SIMBIO . 'simbio_DB/simbio_dbop.inc.php';

// privileges checking
$can_read = utility::havePrivilege('master_file', 'r');
$can_write = utility::havePrivilege('master_file', 'w');

if (!$can_read) {
    die('<div class="errorBox">' . __('You don\'t have enough privileges to access this area!') . '</div>');
}

/* RECORD OPERATION */
if (isset($_POST['saveData']) and $can_read and $can_write) {
    $nameLicense = trim(strip_tags($_POST['nameLicense']));
    // check form validity
    if (empty($nameLicense)) {
        utility::jsAlert(__('License Name can\'t be empty')); //mfc
        exit();
    } else {
        $data['license_name']       = $dbs->escape_string($nameLicense);
        $data['input_date']         = date('Y-m-d');
        $data['last_update']        = date('Y-m-d');
  

        // create sql op object
        $sql_op = new simbio_dbop($dbs);
        if (isset($_POST['updateRecordID'])) {
            /* UPDATE RECORD MODE */
            // remove input date
            unset($data['input_date']);
            // filter update record ID
            $updateRecordID = $dbs->escape_string(trim($_POST['updateRecordID']));
            // update the data
            $update = $sql_op->update('mst_license', $data, 'license_id=\'' . $updateRecordID . '\'');
            if ($update) {
                utility::jsAlert(__('License Data Successfully Updated'));
                // update language ID in biblio table to keep data integrity
                $sql_op->update('biblio', array('license_id' => $data['license_id']), 'license_id=\'' . $updateRecordID . '\'');
                echo '<script type="text/javascript">parent.jQuery(\'#mainContent\').simbioAJAX(parent.jQuery.ajaxHistory[0].url);</script>';
            } else {
                utility::jsAlert(__('License Data FAILED to Updated. Please Contact System Administrator') . "\nDEBUG : " . $sql_op->error);
            }
            exit();
        } else {
            /* INSERT RECORD MODE */
            // insert the data
            $insert = $sql_op->insert('mst_license', $data);
            if ($insert) {
                utility::jsAlert(__('New License Data Successfully Saved'));
                echo '<script type="text/javascript">parent.jQuery(\'#mainContent\').simbioAJAX(\'' . $_SERVER['PHP_SELF'] . '\');</script>';
            } else {
                utility::jsAlert(__('License Data FAILED to Save. Please Contact System Administrator') . "\n" . $sql_op->error);
            }
            exit();
        }
    }
    exit();
} else if (isset($_POST['itemID']) and !empty($_POST['itemID']) and isset($_POST['itemAction'])) {
    if (!($can_read and $can_write)) {
        die();
    }
    /* DATA DELETION PROCESS */
    $sql_op = new simbio_dbop($dbs);
    $failed_array = array();
    $error_num = 0;
    if (!is_array($_POST['itemID'])) {
        // make an array
        $_POST['itemID'] = array($dbs->escape_string(trim($_POST['itemID'])));
    }
    // loop array
    foreach ($_POST['itemID'] as $itemID) {
        $itemID = $dbs->escape_string(trim($itemID));
        if (!$sql_op->delete('mst_license', "license_id='$itemID'")) {
            $error_num++;
        }
    }

    // error alerting
    if ($error_num == 0) {
        utility::jsAlert(__('All Data Successfully Deleted'));
        echo '<script type="text/javascript">parent.jQuery(\'#mainContent\').simbioAJAX(\'' . $_SERVER['PHP_SELF'] . '?' . $_POST['lastQueryStr'] . '\');</script>';
    } else {
        utility::jsAlert(__('Some or All Data NOT deleted successfully!\nPlease contact system administrator'));
        echo '<script type="text/javascript">parent.jQuery(\'#mainContent\').simbioAJAX(\'' . $_SERVER['PHP_SELF'] . '?' . $_POST['lastQueryStr'] . '\');</script>';
    }
    exit();
}
/* language_name update process end */

/* search form */
?>
<fieldset class="menuBox">
    <div class="menuBoxInner masterFileIcon">
        <div class="per_title">
            <h2><?php echo __('License'); ?></h2>
        </div>
        <div class="sub_section">
            <div class="btn-group">
                <a href="<?php echo MWB; ?>master_file/license.php" class="btn btn-default"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;<?php echo __('License List'); ?></a>
                <a href="<?php echo MWB; ?>master_file/license.php?action=detail" class="btn btn-default"><i class="glyphicon glyphicon-plus"></i>&nbsp;<?php echo __('Add New License'); ?></a>
            </div>
            <form name="search" action="<?php echo MWB; ?>master_file/license.php" id="search" method="get" style="display: inline;"><?php echo __('Search'); ?> :
                <input type="text" name="keywords" size="30" />
                <input type="submit" id="doSearch" value="<?php echo __('Search'); ?>" class="button" />
            </form>
        </div>
    </div>
</fieldset>
<?php
/* search form end */
/* main content */
if (isset($_POST['detail']) or (isset($_GET['action']) and $_GET['action'] == 'detail')) {
    if (!($can_read and $can_write)) {
        die('<div class="errorBox">' . __('You don\'t have enough privileges to access this area!') . '</div>');
    }
    /* RECORD FORM */
    $itemID = $dbs->escape_string(trim(isset($_POST['itemID']) ? $_POST['itemID'] : 0));
    $rec_q = $dbs->query("SELECT * FROM mst_license WHERE license_id='$itemID'");
    $rec_d = $rec_q->fetch_assoc();

    // create new instance
    $form = new simbio_form_table_AJAX('mainForm', $_SERVER['PHP_SELF'] . '?' . $_SERVER['QUERY_STRING'], 'post');
    $form->submit_button_attr = 'name="saveData" value="' . __('Save') . '" class="button"';

    // form table attributes
    $form->table_attr = 'align="center" id="dataList" cellpadding="5" cellspacing="0"';
    $form->table_header_attr = 'class="alterCell" style="font-weight: bold;"';
    $form->table_content_attr = 'class="alterCell2"';

    // edit mode flag set
    if ($rec_q->num_rows > 0) {
        $form->edit_mode = true;
        // record ID for delete process
        $form->record_id = $itemID;
        // form record title
        $form->record_title = $rec_d['license_name'];
        // submit button attribute
        $form->submit_button_attr = 'name="saveData" value="' . __('Update') . '" class="button"';
    }

    /* Form Element(s) */
  //Name License
    $form->addTextField('text', 'nameLicense', __('Name License') . '*', $rec_d['license_name'], 'style="width: 60%;"');

  
    // print out the form object
    echo '<div class="infoBox">' . __('You are going to edit license data') . ' : <b>' . $rec_d['license_name'] . '</b>  <br />' . __('Last Update') . $rec_d['last_update'] . '</div>'; //mfc
    echo $form->printOut();
} else {
    /* DOCUMENT LANGUAGE LIST */
    // table spec
    $table_spec = 'mst_license AS l';

    // create datagrid
    $datagrid = new simbio_datagrid();
    if ($can_read and $can_write) {
        
        $datagrid->setSQLColumn(
            'l.license_id',
            'l.license_name AS \'' . __('Name License') . '\'',
            'l.input_date AS \'' . __('Input Date') . '\'',
            'l.last_update AS \'' . __('Last Update') . '\''
        );
    } else {
        $datagrid->setSQLColumn(
            'l.license_id',
            'l.license_name AS \'' . __('Name License') . '\'',
            'l.input_date AS \'' . __('Input Date') . '\'',
            'l.last_update AS \'' . __('Last Update') . '\''
        );
    }
    $datagrid->setSQLorder('license_name ASC');

    // is there any search
    if (isset($_GET['keywords']) and $_GET['keywords']) {
        $keywords = $dbs->escape_string($_GET['keywords']);
        $datagrid->setSQLCriteria("l.license_name LIKE '%$keywords%'");
    }

    // set table and table header attributes
    $datagrid->table_attr = 'align="center" id="dataList" cellpadding="6" cellspacing="0"';
    $datagrid->table_header_attr = 'class="dataListHeader" style="font-weight: bold;"';
    // set delete proccess URL
    $datagrid->chbox_form_URL = $_SERVER['PHP_SELF'];

    //  // callback function to change value of authority type
    //  function callbackDegreeType($obj_db, $rec_d)
    //  {
    //      global $sysconf, $degree_type_fld;
    //      return $sysconf['degree'][$rec_d[$degree_type_fld]];
    // //  }
    //   // modify column content
    // $datagrid->modifyColumnContent($degree_type_fld, 'callback{callbackDegreeType}');

    // put the result into variables
    $datagrid_result = $datagrid->createDataGrid($dbs, $table_spec, 20, ($can_read and $can_write));
    if (isset($_GET['keywords']) and $_GET['keywords']) {
        $msg = str_replace('{result->num_rows}', $datagrid->num_rows, __('Found <strong>{result->num_rows}</strong> from your keywords')); //mfc
        echo '<div class="infoBox">' . $msg . ' : "' . $_GET['keywords'] . '"</div>';
    }

    echo $datagrid_result;
}
/* main content end */
