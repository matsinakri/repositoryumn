<?php
/**
 * SENAYAN application global configuration file
 *
 * Copyright (C) 2010  Arie Nugraha (dicarve@yahoo.com), Hendro Wicaksono (hendrowicaksono@yahoo.com), Wardiyono (wynerst@gmail.com)
 * Some modification by Drajat Hasan (drajathasan20@gmail.com)
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

// be sure that this file not accessed directly
if (!defined('INDEX_AUTH')) {
    die("can not access this file directly");
} else if (INDEX_AUTH != 1) {
    die("can not access this file directly");
}

// be sure that magic quote is off
@ini_set('magic_quotes_gpc', false);
@ini_set('magic_quotes_runtime', false);
@ini_set('magic_quotes_sybase', false);
// force disabling magic quotes
if (get_magic_quotes_gpc()) {
  function stripslashes_deep($value)
  {
    $value = is_array($value)?array_map('stripslashes_deep', $value):stripslashes($value);
    return $value;
  }

  $_POST = array_map('stripslashes_deep', $_POST);
  $_GET = array_map('stripslashes_deep', $_GET);
  $_COOKIE = array_map('stripslashes_deep', $_COOKIE);
  $_REQUEST = array_map('stripslashes_deep', $_REQUEST);
}
// turn off all error messages for security reason
@ini_set('display_errors', true);
// check if safe mode is on
if ((bool) ini_get('safe_mode')) {
    define('SENAYAN_IN_SAFE_MODE', 1);
}

// set default timezone
// for a list of timezone, please see PHP Manual at "List of Supported Timezones" section
@date_default_timezone_set('Asia/Jakarta');

// senayan version
define('SENAYAN_VERSION', 'Setiadi 3 (Walanae)');

// senayan session cookies name
define('COOKIES_NAME', 'SetiadiAdmin');
define('MEMBER_COOKIES_NAME', 'SetiadiMember');

// alias for DIRECTORY_SEPARATOR
define('DS', DIRECTORY_SEPARATOR);

// senayan base dir
define('SB', realpath(dirname(__FILE__)).DS);

// absolute path for simbio platform
define('SIMBIO', SB.'simbio2'.DS);

// senayan library base dir
define('LIB', SB.'lib'.DS);

// Setiadi documentation base dir
define('DOC', SB.'doc'.DS);

// document, member and barcode images base dir
define('IMG', 'images');
define('IMGBS', SB.IMG.DS);

// library automation module base dir
define('MDL', 'modules');
define('MDLBS', SB.'admin'.DS.MDL.DS);

// files upload dir
define('FLS', 'files');
define('UPLOAD', SB.FLS.DS);

// repository dir
define('REPO', 'repository');
define('REPOBS', SB.REPO.DS);

// file attachment dir
define('ATC', 'att');
define('FILE_ATC', UPLOAD.ATC);

// printed report dir
define('REP', 'reports');
define('REPBS', UPLOAD.REP.DS);

// languages base dir
define('LANG', LIB.'lang'.DS);

// senayan web doc root dir
/* Custom base URL */
$sysconf['baseurl'] = '';
$temp_senayan_web_root_dir = preg_replace('@admin.*@i', '', dirname(@$_SERVER['PHP_SELF']));
define('SWB', $sysconf['baseurl'].$temp_senayan_web_root_dir.(preg_match('@\/$@i', $temp_senayan_web_root_dir)?'':'/'));

// admin section web root dir
define('AWB', SWB.'admin/');

// javascript library web root dir
define('JWB', SWB.'js/');

// library automation module web root dir
define('MWB', SWB.'admin/'.MDL.'/');

// repository web base dir
define('REPO_WBS', SWB.REPO.'/');

// item status rules
define('NO_LOAN_TRANSACTION', 1);
define('SKIP_STOCK_TAKE', 2);

// command execution status
define('BINARY_NOT_FOUND', 127);
define('BINARY_FOUND', 1);
define('COMMAND_SUCCESS', 0);
define('COMMAND_FAILED', 2);

// simbio main class inclusion
require SIMBIO.'simbio.inc.php';
// simbio security class
require SIMBIO.'simbio_UTILS'.DS.'simbio_security.inc.php';
// we must include utility library first
require LIB.'utility.inc.php';

// check if we are in mobile browser mode
if (utility::isMobileBrowser()) { define('LIGHTWEIGHT_MODE', 1); }

/* AJAX SECURITY */
$sysconf['ajaxsec_user'] = 'ajax';
$sysconf['ajaxsec_passwd'] = 'secure';
$sysconf['ajaxsec_ip_enabled'] = 0;
$sysconf['ajaxsec_ip_allowed'] = '';

/* session login timeout in second */
$sysconf['session_timeout'] = 7200;

/* default application language */
$sysconf['default_lang'] = 'en_US';
$sysconf['spellchecker_enabled'] = false;

/* HTTP header */
header('Content-type: text/html; charset=UTF-8');

/* GUI Template config */
$sysconf['template']['dir'] = 'template';
$sysconf['template']['theme'] = 'default';
$sysconf['template']['css'] = $sysconf['template']['dir'].'/'.$sysconf['template']['theme'].'/style.css';
ob_start();
include $sysconf['template']['dir'].'/'.$sysconf['template']['theme'].'/tinfo.inc.php';
ob_end_clean();

/* ADMIN SECTION GUI Template config */
$sysconf['admin_template']['dir'] = 'admin_template';
$sysconf['admin_template']['theme'] = 'default';
$sysconf['admin_template']['css'] = $sysconf['admin_template']['dir'].'/'.$sysconf['admin_template']['theme'].'/style.css';

/* OPAC */
$sysconf['opac_result_num'] = 10;

/* Biblio module */
$sysconf['biblio_result_num'] = 30;
$sysconf['batch_item_code_pattern'] = 'B00000';

/* Promote selected title(s) to homepage setting */
$sysconf['enable_promote_titles'] = false;
$sysconf['promote_first_emphasized'] = true;

/* Dynamic Content */
$sysconf['content']['allowable_tags'] = '<p><a><cite><code><em><strong><cite><blockquote><fieldset><legend>'
    .'<h3><hr><br><table><tr><td><th><thead><tbody><tfoot><div><span><img><object><param>';

/* XML */
$sysconf['enable_xml_detail'] = true;
$sysconf['enable_xml_result'] = true;

/* JSON */
$sysconf['enable_json_detail'] = true;
$sysconf['enable_json_result'] = true;

/* DATABASE BACKUP config */
// specify the full path of mysqldump binary
$sysconf['mysqldump'] = '/usr/bin/mysqldump';
// backup location (make sure it is accessible and rewritable to webserver!)
$sysconf['temp_dir'] = '/tmp';
$sysconf['backup_dir'] = UPLOAD.'backup'.DS;

/* FILE DOWNLOAD */
$sysconf['allow_file_download'] = false;

/* WEBCAM feature */
$sysconf['webcam'] = false;

/* SCANNER feature */
$sysconf['scanner'] = false;

/* BARCODE config */
// encoding selection
$barcodes_encoding['EAN'] = array('UPC', '12-digit EAN');
$barcodes_encoding['ISBN'] = array('ISBN', 'isbn numbers (still EAN-13)');
$barcodes_encoding['39'] = array('39', 'code 39');
$barcodes_encoding['128'] = array('128', 'code 128');
$barcodes_encoding['128C'] = array('128C', 'code 128 (compact form for digits)');
$barcodes_encoding['128B'] = array('128B', 'code 128, full printable ascii');
$barcodes_encoding['I25'] = array('I25', 'interleaved 2 of 5');
$barcodes_encoding['128RAW'] = array('128RAW', 'Raw code 128');
$barcodes_encoding['CBR'] = array('CBR', 'Codabars');
$barcodes_encoding['MSI'] = array('MSI', 'MSI');
$barcodes_encoding['PLS'] = array('PLS', 'Plesseys');
$barcodes_encoding['93'] = array('93', 'code 93');
$sysconf['barcode_encoding'] = $barcodes_encoding['128B'];

// Zend Barcode Engine
$sysconf['zend_barcode_engine'] = false;
// Zend Barcode Engine Encoding selection
if ($sysconf['zend_barcode_engine'] === true) {
    unset($barcodes_encoding);
    $barcodes_encoding['CODE25'] = array('code25', 'Code 2 or 5 Industrial');
    $barcodes_encoding['CODE25I'] = array('code25interleaved', 'Code 2 or 5 Interleaved ');
    $barcodes_encoding['CODE39'] = array('code39', 'Code 39');
    $barcodes_encoding['CODE128'] = array('code128', 'Code 128');
    $barcodes_encoding['EAN2'] = array('ean2', 'Ean 2');
    $barcodes_encoding['EAN5'] = array('ean5', 'Ean 5');
    $barcodes_encoding['EAN8'] = array('ean8', 'Ean 8');
    $barcodes_encoding['EAN13'] = array('ean13', 'Ean 13');
    $barcodes_encoding['IDENTCODE'] = array('identcode', 'Identcode');
    $barcodes_encoding['ITF14'] = array('itf14', 'ITF-14');
    $barcodes_encoding['LEITCODE'] = array('leitcode', 'Leitcode');
    $barcodes_encoding['PLANET'] = array('planet', 'Planet');
    $barcodes_encoding['POSTNET'] = array('postnet', 'Postnet');
    $barcodes_encoding['ROYALMAIL'] = array('royalmail', 'Royalmail');
    $barcodes_encoding['UPCA'] = array('upca', 'UPC-A');
    $barcodes_encoding['UPCE'] = array('upce', 'UPC-E');
    $sysconf['barcode_encoding'] = $barcodes_encoding['CODE128'];
}

/* QUICK RETURN */
$sysconf['quick_return'] = true;

/* LOAN LIMIT OVERRIDE */
$sysconf['loan_limit_override'] = false;

/* LOAN DATE CHANGE IN CIRCULATION */
$sysconf['allow_loan_date_change'] = false;

/* CIRCULATION RELATED */
$sysconf['circulation_receipt'] = false;

/* NOTIFICATION RELATED */
$sysconf['transaction_finished_notification'] = false;
$sysconf['bibliography_update_notification'] = true;
$sysconf['bibliography_item_update_notification'] = true;
$sysconf['login_message'] = false;
$sysconf['logout_message'] = false;

/* FILE UPLOADS */
$sysconf['max_upload'] = intval(ini_get('upload_max_filesize'))*1024;
$post_max_size = intval(ini_get('post_max_size'))*1024;
if ($sysconf['max_upload'] > $post_max_size) {
    $sysconf['max_upload'] = $post_max_size-1024;
}
$sysconf['max_image_upload'] = 500;
// allowed image file to upload
$sysconf['allowed_images'] = array('.jpeg', '.jpg', '.gif', '.png', '.JPEG', '.JPG', '.GIF', '.PNG');
// allowed file attachment to upload
$sysconf['allowed_file_att'] = array('.pdf', '.rtf', '.txt',
    '.odt', '.odp', '.ods', '.doc', '.xls', '.ppt',
    '.avi', '.mpeg', '.mp4', '.flv', '.mvk',
    '.jpg', '.jpeg', '.png', '.gif',
    '.docx', '.pptx', '.xlsx',
    '.ogg', '.mp3', '.xml', '.mrc');
$sysconf['allowed_images_mimetype'] = array(
  'image/jpeg', 'image/png',
);

/* FILE ATTACHMENT MIMETYPES */
$sysconf['mimetype']['docx'] = 'application/msword';
$sysconf['mimetype']['js'] = 'application/javascript';
$sysconf['mimetype']['json'] = 'application/json';
$sysconf['mimetype']['doc'] = 'application/msword';
$sysconf['mimetype']['dot'] = 'application/msword';
$sysconf['mimetype']['ogg'] = 'application/ogg';
$sysconf['mimetype']['pdf'] = 'application/pdf';
$sysconf['mimetype']['rdf'] = 'application/rdf+xml';
$sysconf['mimetype']['rss'] = 'application/rss+xml';
$sysconf['mimetype']['rtf'] = 'application/rtf';
$sysconf['mimetype']['xls'] = 'application/vnd.ms-excel';
$sysconf['mimetype']['xlt'] = 'application/vnd.ms-excel';
$sysconf['mimetype']['chm'] = 'application/vnd.ms-htmlhelp';
$sysconf['mimetype']['ppt'] = 'application/vnd.ms-powerpoint';
$sysconf['mimetype']['pps'] = 'application/vnd.ms-powerpoint';
$sysconf['mimetype']['odc'] = 'application/vnd.oasis.opendocument.chart';
$sysconf['mimetype']['odf'] = 'application/vnd.oasis.opendocument.formula';
$sysconf['mimetype']['odg'] = 'application/vnd.oasis.opendocument.graphics';
$sysconf['mimetype']['odi'] = 'application/vnd.oasis.opendocument.image';
$sysconf['mimetype']['odp'] = 'application/vnd.oasis.opendocument.presentation';
$sysconf['mimetype']['ods'] = 'application/vnd.oasis.opendocument.spreadsheet';
$sysconf['mimetype']['odt'] = 'application/vnd.oasis.opendocument.text';
$sysconf['mimetype']['swf'] = 'application/x-shockwave-flash';
$sysconf['mimetype']['zip'] = 'application/zip';
$sysconf['mimetype']['mp3'] = 'audio/mpeg';
$sysconf['mimetype']['jpg'] = 'image/jpeg';
$sysconf['mimetype']['gif'] = 'image/gif';
$sysconf['mimetype']['png'] = 'image/png';
$sysconf['mimetype']['flv'] = 'video/x-flv';
$sysconf['mimetype']['mp4'] = 'video/mp4';
$sysconf['mimetype']['xml'] = 'text/xml';
$sysconf['mimetype']['mrc'] = 'text/marc';

/* PRICE CURRENCIES SETTING */
$sysconf['currencies'] = array( array('0', 'NONE'), 'Rupiah', 'USD', 'Euro', 'DM', 'Pounds', 'Yen', 'Won', 'Yuan', 'SGD', 'Bath', 'Ruppee', 'Taka', 'AUD');

/* RESERVE PERIODE (In Days) */
$sysconf['reserve_expire_periode'] = 7;

/* CONTENT */
$sysconf['library_name'] = 'SETIADI';
$sysconf['library_subname'] = 'Senayan Sistem Elektronik Tesis dan Disertasi';
$sysconf['page_footer'] = ' <strong>Senayan Sistem Elektronik Tesis dan Disertasi (SETIADI)</strong> - Tim Pengembang SETIADI - Released Under GNU GPL License';

/* HTTPS Setting */
$sysconf['https_enable'] = false;
$sysconf['https_port'] = 443;

/* Date Format Setting for OPAC */
$sysconf['date_format'] = 'Y-m-d'; /* Produce 2009-12-31 */
// $sysconf['date_format'] = 'd-M-Y'; /* Produce 31-Dec-2009 */

// template info config
if (!file_exists($sysconf['template']['dir'].'/'.$sysconf['template']['theme'].'/tinfo.inc.php')) {
    $sysconf['template']['base'] = 'php'; /* html OR php */
} else {
    require $sysconf['template']['dir'].'/'.$sysconf['template']['theme'].'/tinfo.inc.php';
}

$sysconf['pdf']['viewer'] = 'pdfjs'; # 'zviewer' or 'pdfjs'. Use psfjs for better support
$sysconf['allow_pdf_download'] = true; # only work with 'zviewer'

# Image watermarking
$sysconf['watermark']['enable'] = false;
$sysconf['watermark']['type'] = 'image'; # 'text' or 'image'
$sysconf['watermark']['text'] = 'Senayan Library Management System';
$sysconf['watermark']['image'] = '../../images/default/watermark.png';
$sysconf['watermark']['sizeoftext'] = '5'; # range 1 - 5
$sysconf['watermark']['alignment'] = 'BR'; #BR, BL, TR, TL, C, R, L, T, B, where B=bottom, T=top, L=left, R=right, C=centre
$sysconf['watermark']['color'] = 'ffffff'; # the hex color of the text
$sysconf['watermark']['opacity'] = '50'; #is opacity from 0 (transparent) to 100 (opaque)

/**
 * UCS global settings
 */
$sysconf['ucs']['enable'] = false;
// auto delete same record on UCS?
$sysconf['ucs']['auto_delete'] = false;
// auto insert new record to UCS?
$sysconf['ucs']['auto_insert'] = false;

/**
 * Z39.50 copy cataloguing sources
 */
$sysconf['z3950_max_result'] = 50;
$sysconf['z3950_source'][1] = array('uri' => 'z3950.loc.gov:7090/voyager', 'name' => 'Library of Congress Voyager');
$sysconf['z3950_SRU_source'][1] = array('uri' => 'http://z3950.loc.gov:7090/voyager', 'name' => 'Library of Congress SRU Voyager');
















/**
 * Peer to peer server config
 */
$sysconf['p2pserver'][1] = array('uri' => 'http://127.0.0.1/slims7_cendana', 'name' => 'SLiMS Library');
$sysconf['p2pserver'][2] = array('uri' => 'http://192.168.70.117:8089/cendana', 'name' => 'Perpustakaan XYZ');



















/**
 * User and member login method
 */
$sysconf['auth']['user']['method'] = 'native'; // method can be 'native' or 'LDAP'
$sysconf['auth']['member']['method'] = 'native'; // for library member, method can be 'native' or 'LDAP'
/**
 * LDAP Specific setting for User
 */
if (($sysconf['auth']['user']['method'] === 'LDAP') OR ($sysconf['auth']['member']['method'] === 'LDAP')) {
  $sysconf['auth']['user']['ldap_server'] = '127.0.0.1'; // LDAP server
  $sysconf['auth']['user']['ldap_base_dn'] = 'ou=slims,dc=diknas,dc=go,dc=id'; // LDAP base DN
  $sysconf['auth']['user']['ldap_suffix'] = ''; // LDAP user suffix
  $sysconf['auth']['user']['ldap_bind_dn'] = 'uid=#loginUserName,'.$sysconf['auth']['user']['ldap_base_dn']; // Binding DN
  $sysconf['auth']['user']['ldap_port'] = null; // optional LDAP server connection port, use null or false for default
  $sysconf['auth']['user']['ldap_options'] = array(
      array(LDAP_OPT_PROTOCOL_VERSION, 3),
      array(LDAP_OPT_REFERRALS, 0)
      ); // optional LDAP server options
  $sysconf['auth']['user']['ldap_search_filter'] = '(|(uid=#loginUserName)(cn=#loginUserName*))'; // LDAP search filter, #loginUserName will be replaced by the real login name
  $sysconf['auth']['user']['userid_field'] = 'uid'; // LDAP field for username
  $sysconf['auth']['user']['fullname_field'] = 'cn'; // LDAP field for full name
  $sysconf['auth']['user']['mail_field'] = 'mail'; // LDAP field for e-mail
  /**
   * LDAP Specific setting for member
   * By default same as User
   */
  $sysconf['auth']['member']['ldap_server'] = &$sysconf['auth']['user']['ldap_server']; // LDAP server
  $sysconf['auth']['member']['ldap_base_dn'] = &$sysconf['auth']['user']['ldap_base_dn']; // LDAP base DN
  $sysconf['auth']['member']['ldap_suffix'] = &$sysconf['auth']['user']['ldap_suffix']; // LDAP user suffix
  $sysconf['auth']['member']['ldap_bind_dn'] = &$sysconf['auth']['user']['ldap_bind_dn']; // Binding DN
  $sysconf['auth']['member']['ldap_port'] = &$sysconf['auth']['user']['ldap_port']; // optional LDAP server connection port, use null or false for default
  $sysconf['auth']['member']['ldap_options'] = &$sysconf['auth']['user']['ldap_options']; // optional LDAP server options
  $sysconf['auth']['member']['ldap_search_filter'] = &$sysconf['auth']['user']['ldap_search_filter']; // LDAP search filter, #loginUserName will be replaced by the real login name
  $sysconf['auth']['member']['userid_field'] = &$sysconf['auth']['user']['userid_field']; // LDAP field for username
  $sysconf['auth']['member']['fullname_field'] = &$sysconf['auth']['user']['fullname_field']; // LDAP field for full name
  $sysconf['auth']['member']['mail_field'] = &$sysconf['auth']['user']['mail_field']; // LDAP field for e-mail
}

/**
 * BIBLIO INDEXING
 */
$sysconf['index']['type'] = 'index'; // value can be 'default', 'index' OR 'sphinx'
$sysconf['index']['sphinx_opts'] = array(
    'host' => '127.0.0.1',
    'port' => 9312,
    'index' => 'slims', // name of index in sphinx.conf
	'mode' => null, 'timeout' => 0, 'filter' => '@last_update desc',
	'filtervals' => array(), 'groupby' => null, 'groupsort' => null,
	'sortby' => null, 'sortexpr' => null, 'distinct' => 'biblio_id',
	'select' => null, 'limit' => 20,
    'max_limit' => 100000, // must be less or same with max_matches in sphinx.conf
	'ranker' => null);

/**
 * Captcha Settings
 */
// Captcha settings for Senayan Management Console (aka Librarian Login)
$sysconf['captcha']['smc']['enable'] = true; // value can be 'true' or 'false'
$sysconf['captcha']['smc']['type'] = 'recaptcha'; // value can be 'recaptcha' (at this time)
if ($sysconf['captcha']['smc']['enable']) {
    include_once LIB.$sysconf['captcha']['smc']['type'].DS.'smc_settings.inc.php';
}

// Captcha settings for Member Login
$sysconf['captcha']['member']['enable'] = true; // value can be 'true' or 'false'
$sysconf['captcha']['member']['type'] = 'recaptcha'; // value can be 'recaptcha' (at this time)
if ($sysconf['captcha']['member']['enable']) {
    include_once LIB.$sysconf['captcha']['member']['type'].DS.'member_settings.inc.php';
}

/**
 * Mailing Settings
 */


$sysconf['mail']['enable'] = true;
$sysconf['mail']['server'] = 'ssl://smtp.gmail.com:465'; // SMTP server
$sysconf['mail']['server_port'] = 465; // the SMTP port
$sysconf['mail']['auth_enable'] = true; // enable SMTP authentication
$sysconf['mail']['auth_username'] = 'helpdesk.lib@unsyiah.ac.id'; // SMTP account username 
$sysconf['mail']['auth_password'] = 'pu5t4k4tolong'; // SMTP account password
$sysconf['mail']['from'] = 'helpdesk.lib@unsyiah.ac.id';
$sysconf['mail']['from_name'] = 'Senayan Elektronik Theses and Disertation';
$sysconf['mail']['reply_to'] = &$sysconf['mail']['from'];
$sysconf['mail']['reply_to_name'] = &$sysconf['mail']['from_name'];



/**
 * Maximum biblio mark for member
 */
$sysconf['max_biblio_mark'] = 20;

// Thumbnail Generator
$sysconf['tg']['relative_url'] = '../../';
$sysconf['tg']['docroot'] = ''; #usually use this in a virtual or alias based hosting
$sysconf['tg']['type'] = 'phpthumb'; # phpthumb | minigalnano

// IP based access limitation
$sysconf['ipaccess']['general'] = 'all'; // donot change this unless you know what you are doing
$sysconf['ipaccess']['opac'] = 'all'; // donot change this unless you know what you are doing
$sysconf['ipaccess']['opac-member'] = 'all'; // donot change this unless you know what you are doing
$sysconf['ipaccess']['smc'] = 'all';
$sysconf['ipaccess']['smc-bibliography'] = 'all';
$sysconf['ipaccess']['smc-circulation'] = 'all';
$sysconf['ipaccess']['smc-membership'] = 'all';
$sysconf['ipaccess']['smc-masterfile'] = 'all';
$sysconf['ipaccess']['smc-stocktake'] = 'all';
$sysconf['ipaccess']['smc-system'] = 'all';
$sysconf['ipaccess']['smc-reporting'] = 'all';
$sysconf['ipaccess']['smc-serialcontrol'] = 'all';

// OAI-PMH settings
$sysconf['OAI']['enable'] = true;
$sysconf['OAI']['identifierPrefix'] = 'oai:slims/';
$sysconf['OAI']['Identify']['baseURL'] = 'http://'.@$_SERVER['SERVER_NAME'].':'.@$_SERVER['SERVER_PORT'].SWB.'oai.php';
$sysconf['OAI']['Identify']['repositoryName'] = 'SETIADI OAI-PMh';
$sysconf['OAI']['Identify']['adminEmail'] = 'admin@slims.web.id';
$sysconf['OAI']['Identify']['granularity'] = 'YYYY-MM-DDThh:mm:ssZ';
$sysconf['OAI']['Identify']['deletedRecord'] = 'transient';
$sysconf['OAI']['Identify']['metadataPolicy'] = '';
$sysconf['OAI']['ListRecords']['RecordPerSet'] = '100';
$sysconf['OAI']['MetadataFormats']['Dublin Core'] = array(
  'oai_prefix' => 'oai_dc',
  'schema_xsd' => 'http://www.openarchives.org/OAI/2.0/oai_dc.xsd',
  'namespace' => 'http://www.openarchives.org/OAI/2.0/oai_dc/');

// Search clustering
$sysconf['enable_search_clustering'] = true;

// check if session is auto started and then destroy it
if ($is_auto = @ini_get('session.auto_start')) { define('SESSION_AUTO_STARTED', $is_auto); }
if (defined('SESSION_AUTO_STARTED')) { @session_destroy(); }

// check for local sysconfig For Admin (fa) file
if (defined('DB_ACCESS') && DB_ACCESS == 'fa' && file_exists(SB.'sysconfig.local.fa.inc.php')) {
  include SB.'sysconfig.local.fa.inc.php';
} else {
  // check for local sysconfig file
  if (file_exists(SB.'db_config/sysconfig.local.inc.php')) {
    include SB.'db_config/sysconfig.local.inc.php';
  } else {
	  header("location: ".SWB."install/index.php");
	  exit;
  }
}

/* DATABASE RELATED */
if (!defined('DB_HOST')) { define('DB_HOST', 'localhost'); }
if (!defined('DB_PORT')) { define('DB_PORT', '3306'); }
if (!defined('DB_NAME')) { define('DB_NAME', 'senayandb'); }
if (!defined('DB_USERNAME')) { define('DB_USERNAME', 'senayanuser'); }
if (!defined('DB_PASSWORD')) { define('DB_PASSWORD', 'password_senayanuser'); }
// database connection
// we prefer to use mysqli extensions if its available
if (extension_loaded('mysqli')) {
    /* MYSQLI */
    $dbs = @new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);
    if (mysqli_connect_error()) {
        die("Error Connecting to Database with message: ".mysqli_connect_error().". Please check your configuration!\n");
    }
} else {
    /* MYSQL */
    // require the simbio mysql class
    include SIMBIO.'simbio_DB/mysql/simbio_mysql.inc.php';
    // make a new connection object that will be used by all applications
    $dbs = @new simbio_mysql(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);
}

/* Force UTF-8 for MySQL connection */
$dbs->query('SET NAMES \'utf8\'');

// load global settings from database. Uncomment below lines if you dont want to load it
utility::loadSettings($dbs);

// check for user language selection if we are not in admin areas
if (stripos($_SERVER['PHP_SELF'], '/admin') === false) {
    if (isset($_GET['select_lang'])) {
        $select_lang = trim(strip_tags($_GET['select_lang']));
        // delete previous language cookie
        if (isset($_COOKIE['select_lang'])) {
            @setcookie('select_lang', $select_lang, time()-14400, SWB);
        }
        // create language cookie
        @setcookie('select_lang', $select_lang, time()+14400, SWB);
        $sysconf['default_lang'] = $select_lang;
    } else if (isset($_COOKIE['select_lang'])) {
        $sysconf['default_lang'] = trim(strip_tags($_COOKIE['select_lang']));
    }
    // set back to en_US on XML
    if (isset($_GET['resultXML']) OR isset($_GET['inXML'])) {
        $sysconf['default_lang'] = 'en_US';
    }

    // set back to en_US on JSON
    if (isset($_GET['resultJSON']) OR isset($_GET['inJSON'])) {
        $sysconf['default_lang'] = 'en_US';
    }
}

// Apply language settings
require LANG.'localisation.php';

/* AUTHORITY TYPE */
$sysconf['authority_type']['p'] = __('Personal Name');
$sysconf['authority_type']['o'] = __('Organizational Body');
$sysconf['authority_type']['c'] = __('Conference');

$sysconf['supervisor_type']['p'] = __('Personal Name');

/* SUBJECT/AUTHORITY TYPE */
$sysconf['subject_type']['t'] = __('Topic');
$sysconf['subject_type']['g'] = __('Geographic');
$sysconf['subject_type']['n'] = __('Name');
$sysconf['subject_type']['tm'] = __('Temporal');
$sysconf['subject_type']['gr'] = __('Genre');
$sysconf['subject_type']['oc'] = __('Occupation');

/* AUTHORITY LEVEL */
$sysconf['authority_level'][1] = __('Pengarang');

/* SUPERVISORITY TYPE */
$sysconf['supervisor_type']['p'] = __('Personal Name');
/* SUPERVISORITY LEVEL */
$sysconf['authority_level_supervisor'][1] = __('Dosen Pembimbing 1');
$sysconf['authority_level_supervisor'][2] = __('Dosen Pembimbing 2');
$sysconf['authority_level_supervisor'][3] = __('Dosen Pembimbing 3');


/* SUPERVISORITY TYPE */
$sysconf['examiner_type']['p'] = __('Personal Name');

$sysconf['authority_level_examiner'][1] = __('Ketua Penguji');
$sysconf['authority_level_examiner'][2] = __('Penguji 1');
$sysconf['authority_level_examiner'][3] = __('Penguji 2');

/* CONTRIBUTOR TYPE */
$sysconf['contributor_type']['p'] = __('Personal Name');
/* SUPERVISORITY LEVEL */
$sysconf['authority_level_contributor'][1] = __('Contributor');
$sysconf['authority_level_contributor'][3] = __('Editor');

/* DEGRE */
$sysconf['degree']['1'] = __('D1');
$sysconf['degree']['2'] = __('D2');
$sysconf['degree']['3'] = __('D3');
$sysconf['degree']['4'] = __('D4');
$sysconf['degree']['5'] = __('S1');
$sysconf['degree']['6'] = __('S2');
$sysconf['degree']['7'] = __('S3');
$sysconf['degree']['8'] = __('Non Formal');
$sysconf['degree']['9'] = __('Informal');
$sysconf['degree']['10'] = __('Lainnya');
$sysconf['degree']['11'] = __('Sp-1');
$sysconf['degree']['12'] = __('Sp-2');
$sysconf['degree']['13'] = __('Profesi');
$sysconf['degree']['14'] = __('S2 Terapan');
$sysconf['degree']['15'] = __('S3 Terapan');


// comment
$sysconf['comment']['enable'] =  true;

// social apps sharing
$sysconf['social_shares'] = true;

// system user type
$sysconf['system_user_type'][1] = __('Librarian');
$sysconf['system_user_type'][2] = __('Senior Librarian');
$sysconf['system_user_type'][3] = __('Library Staff');

// social media for user and member
$sysconf['social']['fb'] = 'Facebook';
$sysconf['social']['tw'] = 'Twitter';
$sysconf['social']['li'] = 'LinkedIn';
$sysconf['social']['rd'] = 'Reddit';
$sysconf['social']['pn'] = 'Pinterest';
$sysconf['social']['gp'] = 'Google Plus+';
$sysconf['social']['yt'] = 'YouTube';
$sysconf['social']['bl'] = 'Blog';
$sysconf['social']['ym'] = 'Yahoo! Messenger';

// redirect to mobile template on mobile mode
if (defined('LIGHTWEIGHT_MODE') AND !isset($_COOKIE['FULLSITE_MODE']) AND $sysconf['template']['responsive'] === false) {
  $sysconf['template']['theme'] = 'lightweight';
  $sysconf['template']['css'] = $sysconf['template']['dir'].'/'.$sysconf['template']['theme'].'/style.css';
  $sysconf['enable_xml_detail'] = false;
  $sysconf['enable_xml_result'] = false;
  $sysconf['enable_json_detail'] = false;
  $sysconf['enable_json_result'] = false;
}

// plugin config
$sysconf['plugin']['orcid'] = false;