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

/* Author Management section */

// key to authenticate
define('INDEX_AUTH', '1');
// key to get full database access
define('DB_ACCESS', 'fa');

// main system configuration
require '../../../sysconfig.inc.php';
// IP based access limitation
require LIB.'ip_based_access.inc.php';
do_checkIP('smc');
do_checkIP('smc-masterfile');

// start the session
require SB.'admin/default/session.inc.php';
require SB.'admin/default/session_check.inc.php';
require SIMBIO.'simbio_GUI/table/simbio_table.inc.php';
require SIMBIO.'simbio_GUI/form_maker/simbio_form_table_AJAX.inc.php';
require SIMBIO.'simbio_GUI/paging/simbio_paging.inc.php';
require SIMBIO.'simbio_DB/datagrid/simbio_dbgrid.inc.php';
require SIMBIO.'simbio_DB/simbio_dbop.inc.php';

// privileges checking
$can_read = utility::havePrivilege('master_file', 'r');
$can_write = utility::havePrivilege('master_file', 'w');

if (!$can_read) {
    die('<div class="errorBox">'.__('You don\'t have enough privileges to access this area!').'</div>');
}

/* RECORD OPERATION */
if (isset($_POST['saveData']) AND $can_read AND $can_write) {
    $superName = trim(strip_tags($_POST['superName']));
    // check form validity
    if (empty($superName)) {
        utility::jsAlert(__('Supervisor name can\'t be empty'));
        exit();
    } else {
        $data['supervisor_name'] = $dbs->escape_string($superName);
        $data['supervisor_number'] = trim($dbs->escape_string(strip_tags($_POST['supervisorNumber'])));
        $super_year = $dbs->escape_string(trim($_POST['supervisorYear']));
        if ($super_year) { $data['supervisor_year'] = $super_year; }
        $data['supervisor_type'] = trim($dbs->escape_string(strip_tags($_POST['supervisorType'])));
        $data['supervisor_list'] = trim($dbs->escape_string(strip_tags($_POST['supervisorList'])));
        $data['input_date'] = date('Y-m-d');
        $data['last_update'] = date('Y-m-d');

        // create sql op object
        $sql_op = new simbio_dbop($dbs);
        if (isset($_POST['updateRecordID'])) {
            /* UPDATE RECORD MODE */
            // remove input date
            unset($data['input_date']);
            // filter update record ID
            $updateRecordID = (integer)$_POST['updateRecordID'];
            // update the data
            $update = $sql_op->update('mst_supervisor', $data, 'supervisor_id='.$updateRecordID);
            if ($update) {
                utility::jsAlert(__('Supervisor Data Successfully Updated'));
                echo '<script type="text/javascript">parent.jQuery(\'#mainContent\').simbioAJAX(parent.jQuery.ajaxHistory[0].url);</script>';
            } else { utility::jsAlert(__('Supervisor Data FAILED to Updated. Please Contact System Administrator')."\nDEBUG : ".$sql_op->error); }
            exit();
        } else {
            /* INSERT RECORD MODE */
            // insert the data
            $insert = $sql_op->insert('mst_supervisor', $data);
            if ($insert) {
                utility::jsAlert(__('New supervisor Data Successfully Saved'));
                echo '<script type="text/javascript">parent.jQuery(\'#mainContent\').simbioAJAX(\''.$_SERVER['PHP_SELF'].'\');</script>';
            } else { utility::jsAlert(__('supervisor Data FAILED to Save. Please Contact System Administrator')."\nDEBUG : ".$sql_op->error); }
            exit();
        }
    }
    exit();
} else if (isset($_POST['itemID']) AND !empty($_POST['itemID']) AND isset($_POST['itemAction'])) {
    if (!($can_read AND $can_write)) {
        die();
    }
    /* DATA DELETION PROCESS */
    $sql_op = new simbio_dbop($dbs);
    $failed_array = array();
    $error_num = 0;
    if (!is_array($_POST['itemID'])) {
        // make an array
        $_POST['itemID'] = array((integer)$_POST['itemID']);
    }
    // loop array
    foreach ($_POST['itemID'] as $itemID) {
        $itemID = (integer)$itemID;
        if (!$sql_op->delete('mst_supervisor', 'supervisor_id='.$itemID)) {
            $error_num++;
        }
    }

    // error alerting
    if ($error_num == 0) {
        utility::jsAlert(__('All Data Successfully Deleted'));
        echo '<script type="text/javascript">parent.jQuery(\'#mainContent\').simbioAJAX(\''.$_SERVER['PHP_SELF'].'?'.$_POST['lastQueryStr'].'\');</script>';
    } else {
        utility::jsAlert(__('Some or All Data NOT deleted successfully!\nPlease contact system administrator'));
        echo '<script type="text/javascript">parent.jQuery(\'#mainContent\').simbioAJAX(\''.$_SERVER['PHP_SELF'].'?'.$_POST['lastQueryStr'].'\');</script>';
    }
    exit();
}
/* RECORD OPERATION END */

/* search form */
?>
<fieldset class="menuBox">
<div class="menuBoxInner masterFileIcon">
	<div class="per_title">
	    <h2><?php echo __('Supervisor'); ?></h2>
  </div>
	<div class="sub_section">
	  <div class="btn-group">
      <a href="<?php echo MWB; ?>master_file/supervisor.php" class="btn btn-default"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;<?php echo __('supervisor List'); ?></a>
      <a href="<?php echo MWB; ?>master_file/supervisor.php?action=detail" class="btn btn-default"><i class="glyphicon glyphicon-plus"></i>&nbsp;<?php echo __('Add New supervisor'); ?></a>
	  </div>
    <form name="search" action="<?php echo MWB; ?>master_file/supervisor.php" id="search" method="get" style="display: inline;"><?php echo __('Search'); ?> :
    <input type="text" name="keywords" size="30" />
    <input type="submit" id="doSearch" value="<?php echo __('Search'); ?>" class="button" />
    </form>
  </div>
</div>
</fieldset>
<?php
/* search form end */
/* main content */
if (isset($_POST['detail']) OR (isset($_GET['action']) AND $_GET['action'] == 'detail')) {
    if (!($can_read AND $can_write)) {
        die('<div class="errorBox">'.__('You don\'t have enough privileges to access this area!').'</div>');
    }
    /* RECORD FORM */
    $itemID = (integer)isset($_POST['itemID'])?$_POST['itemID']:0;
    $rec_q = $dbs->query('SELECT * FROM mst_supervisor WHERE supervisor_id='.$itemID);
    $rec_d = $rec_q->fetch_assoc();

    // create new instance
    $form = new simbio_form_table_AJAX('mainForm', $_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING'], 'post');
    $form->submit_button_attr = 'name="saveData" value="'.__('Save').'" class="button"';

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
        $form->record_title = $rec_d['supervisor_name'];
        // submit button attribute
        $form->submit_button_attr = 'name="saveData" value="'.__('Update').'" class="button"';
    }

    /* Form Element(s) */
    // supervisor name
    $form->addTextField('text', 'superName', __('SupervisorName').'*', $rec_d['supervisor_name'], 'style="width: 60%;"');
     // supervisor Number
     $form->addTextField('text', 'supervisorNumber', __('supervisorNumber').'*', $rec_d['supervisor_number'], 'style="width: 60%;"');
    // author year
    $form->addTextField('text', 'supervisorYear', __('supervisor Birth Year'), $rec_d['supervisor_year'], 'style="width: 60%;"');
    // authority type
    foreach ($sysconf['supervisor_type'] as $auth_type_id => $auth_type) {
        $auth_type_options[] = array($auth_type_id, $auth_type);
    }
    $form->addSelectList('supervisorType', __('supervisor Type'), $auth_type_options, $rec_d['supervisor_type']);
    // authority list
    $form->addTextField('text', 'supervisorList', __('supervisor Files'), $rec_d['supervisor_list'], 'style="width: 30%;"');

    // edit mode messagge
    if ($form->edit_mode) {
        echo '<div class="infoBox">'.__('You are going to edit supervisor data').' : <b>'.$rec_d['supervisor_name'].'</b> <br />'.__('Last Update').$rec_d['last_update'].'</div>'; //mfc
    }
    // print out the form object
    echo $form->printOut();
} else {
    /* AUTHOR LIST */
    // table spec
    $sql_criteria = 'a.supervisor_id > 1';
    if (isset($_GET['type']) && $_GET['type'] == 'orphaned') {
        $table_spec = 'mst_supervisor AS a LEFT JOIN biblio_supervisor AS ba ON a.supervisor_id=ba.supervisor_id';
        $sql_criteria = 'ba.biblio_id IS NULL OR ba.supervisor_id IS NULL';
    } else {
        $table_spec = 'mst_supervisor AS a';
    }


    // authority field num
    $supervisor_type_fld = 2;
    // create datagrid
    $datagrid = new simbio_datagrid();
    if ($can_read AND $can_write) {
        $supervisor_type_fld = 3;
        $datagrid->setSQLColumn('a.supervisor_id', 'a.supervisor_name AS \''.__('Nama Dosen').'\'',
            'a.supervisor_number AS \''.__('Nama Dosen').'\'',
            // 'a.supervisor_year AS \''.__('Supervisor Year').'\'',            
            'a.supervisor_type AS \''.__('Supervisor Type').'\'',            
            'a.supervisor_list AS \''.__('supervisor Files').'\'',
            'a.last_update AS \''.__('Last Update').'\'');
    } else {
        $datagrid->setSQLColumn('a.supervisor_name AS \''.__('Nama Dosen').'\'',
            'a.supervisor_number AS \''.__('Nama Dosen').'\'',
            // 'a.supervisor_year AS \''.__('supervisor Year').'\'',
            'a.supervisor_type AS \''.__('supervisor Type').'\'',
            'a.supervisor_list AS \''.__('supervisor Files').'\'',
            'a.last_update AS \''.__('Last Update').'\'');
    }
    $datagrid->setSQLorder('supervisor_name ASC');

    // change the record order
    if (isset($_GET['fld']) AND isset($_GET['dir'])) {
        $datagrid->setSQLorder("'".urldecode($_GET['fld'])."' ".$dbs->escape_string($_GET['dir']));
    }

    // is there any search
    if (isset($_GET['keywords']) AND $_GET['keywords']) {
       $keywords = $dbs->escape_string($_GET['keywords']);
       $sql_criteria .= " AND a.supervisor_name LIKE '%$keywords%'";
    }
    $datagrid->setSQLCriteria($sql_criteria);

    // set table and table header attributes
    $datagrid->table_attr = 'align="center" id="dataList" cellpadding="5" cellspacing="0"';
    $datagrid->table_header_attr = 'class="dataListHeader" style="font-weight: bold;"';
    // set delete proccess URL
    $datagrid->chbox_form_URL = $_SERVER['PHP_SELF'];

    // callback function to change value of authority type
    function callbackSupervisorType($obj_db, $rec_d)
    {
        global $sysconf, $supervisor_type_fld;
        return $sysconf['supervisor_type'][$rec_d[$supervisor_type_fld]];
    }
    // modify column content
    $datagrid->modifyColumnContent($supervisor_type_fld, 'callback{callbackSupervisorType}');
    // put the result into variable
    $datagrid_result = $datagrid->createDataGrid($dbs, $table_spec, 20, ($can_read AND $can_write));
    if (isset($_GET['keywords']) AND $_GET['keywords']) {
        $msg = str_replace('{result->num_rows}', $datagrid->num_rows, __('Found <strong>{result->num_rows}</strong> from your keywords')); //mfc
        echo '<div class="infoBox">'.$msg.' : "'.$_GET['keywords'].'"</div>';
    }

    echo $datagrid_result;
}
/* main content end */
