<?php

/**
 * detail class
 * Class for document/record detail
 *
 * Copyright (C) 2007,2008  Arie Nugraha (dicarve@yahoo.com)
 * Some security patches by Hendro Wicaksono (hendrowicaksono@yahoo.com)
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
} elseif (INDEX_AUTH != 1) {
    die("can not access this file directly");
}

require 'content_list.inc.php';

class detail extends content_list
{
    private $obj_db = false;
    private $record_detail = array();
    private $detail_id = 0;
    private $error = false;
    private $output_format = 'html';
    protected $detail_prefix = '';
    protected $detail_suffix = '';
    public $record_title;
    public $metadata;

    /**
     * Class Constructor
     *
     * @param   object  $obj_db
     * @param   integer $int_detail_id
     * @param   str     $str_output_format
     * @return  void
     */
    public function __construct($obj_db, $int_detail_id, $str_output_format = 'html')
    {
        if (!in_array($str_output_format, array('html', 'xml', 'mods', 'dc'))) {
            $this->output_format = trim($str_output_format);
        } else {
            $this->output_format = $str_output_format;
        }

        $this->obj_db = $obj_db;
        $this->detail_id = $int_detail_id;
        $_sql = sprintf('SELECT b.*, l.language_name, p.publisher_name, 
            mc.copyright_name, mit.item_type_name, 
            pl.place_name AS \'publish_place\', 
            gmd.gmd_name, fr.frequency FROM biblio AS b
            LEFT JOIN mst_gmd AS gmd ON b.gmd_id=gmd.gmd_id
            LEFT JOIN mst_language AS l ON b.language_id=l.language_id
            LEFT JOIN mst_publisher AS p ON b.publisher_id=p.publisher_id
            LEFT JOIN mst_place AS pl ON b.publish_place_id=pl.place_id
            LEFT JOIN mst_frequency AS fr ON b.frequency_id=fr.frequency_id
            LEFT JOIN mst_copyright as mc ON b.copyright_id=mc.copyright_id
            LEFT JOIN mst_item_type as mit ON b.item_type_id=mit.item_type_id
            WHERE biblio_id=%d', $int_detail_id);
        // for debugging purpose only
        // die($_sql);
        // query the data to database
        $_det_q = $obj_db->query($_sql);
        if ($obj_db->error) {
            $this->error = $obj_db->error;
        } else {
            $this->error = false;
            $this->record_detail = $_det_q->fetch_assoc();
            // free the memory
            $_det_q->free_result();
        }
    }


    /**
     * Method to print out the document detail based on template
     *
     * @return  void
     */
    public function showDetail()
    {
        if ($this->error) {
            return '<div class="error">Error Fetching data for record detail. Server return error message: ' . $this->error . '</div>';
        } else {
            if ($this->output_format == 'html' and !empty($this->list_template)) {
                return parent::parseListTemplate($this->htmlOutput());
            } else if ($this->output_format == 'mods') {
                return $this->MODSoutput();
            } elseif ($this->output_format == 'mods_json') {
                return $this->JSONoutput();
            }else {
                // external output function
                if (function_exists($this->output_format)) {
                    $_ext_func = $this->output_format;
                    return $_ext_func();
                }
                return null;
            }
        }
    }


    /**
     * Record detail output in HTML mode
     * @return  array
     *
     */
    protected function htmlOutput()
    {
        // get global configuration vars array
        global $sysconf;
        $_detail_link = SWB . 'index.php?p=show_detail&id=' . $this->detail_id;

        foreach ($this->record_detail as $idx => $data) {
            if ($idx == 'notes') {
                $data = nl2br($data);
            } else {
                $data = trim(strip_tags($data));
            }
            $this->record_detail[$idx] = $data;
        }

        // get title and set it to public record_title property
        $this->record_title = $this->record_detail['title'];
        $this->metadata = '<link rel="schema.DC" href="http://purl.org/dc/elements/1.1/" />';
        $this->metadata .= '<meta name="DC.title" content="' . $this->record_title . '" />';
        $this->metadata .= '<meta name="DC.student_id" content="' . $this->record_detail['student_id'] . '" />';
        $this->metadata .= '<meta name="DC.code_ministry" content="' . $this->record_detail['code_ministry'] . '" />';
        $this->metadata .= '<meta name="DC.identifier" content="' . $this->record_detail['isbn_issn'] . '" />';
        $this->metadata .= '<meta name="DC.format" content="' . $this->record_detail['gmd_name'] . '" />';
        $this->metadata .= '<meta name="DC.type" content="' . $this->record_detail['gmd_name'] . '" />';
        $this->metadata .= '<meta name="DC.language" content="' . $this->record_detail['language_name'] . '" />';
        $this->metadata .= '<meta name="DC.publisher" content="' . $this->record_detail['publisher_name'] . '" />';
        $this->metadata .= '<meta name="DC.date" content="' . $this->record_detail['publish_year'] . '" />';
        $this->metadata .= '<meta name="DC.coverage" content="' . $this->record_detail['publish_place'] . '" />';
        $this->metadata .= '<meta name="DC.description" content="' . strip_tags($this->record_detail['notes']) . '" />';
        $this->metadata .= '<meta name="Physical Description" content="' . $this->record_detail['collation'] . '" />';
        $this->metadata .= '<meta name="Statement of Responsibility" content="' . $this->record_detail['sor'] . '" />';
        $this->metadata .= '<meta name="Classification" content="' . $this->record_detail['classification'] . '" />';
        $this->metadata .= '<meta name="Series Title" content="' . $this->record_detail['series_title'] . '" />';
        $this->metadata .= '<meta name="Edition" content="' . $this->record_detail['edition'] . '" />';
        $this->metadata .= '<meta name="Call Number" content="' . $this->record_detail['call_number'] . '" />';
        $this->metadata .= '<meta name="departement" content="' . $this->record_detail['departement'] . '" />';
        $this->metadata .= '<meta name="copyright_name" content="' . $this->record_detail['copyright_name'] . '" />';
        $this->metadata .= '<meta name="item_type_name" content="' . $this->record_detail['item_type_name'] . '" />';
       // $this->metadata .= '<meta name="url crossref" content="' . $this->record_detail['url_crossref'] . '" />';
        //$this->metadata .= '<meta name="unique_id" content="' . $this->record_detail['unique_id'] . '" />';
        // check image
        if (!empty($this->record_detail['image'])) {
            if ($sysconf['tg']['type'] == 'phpthumb') {
                $this->record_detail['image'] = '<a class="magnifier-thumb-wrapper" href="#"><img src="./lib/phpthumb/phpThumb.php?src=' . $sysconf['tg']['relative_url'] . 'images/docs/' . urlencode($this->record_detail['image']) . '&w=200" border="0" data-large-img-url="/slims/images/docs/' . urlencode($this->record_detail['image']) . '" class="thumb" /></a>';
            } elseif ($sysconf['tg']['type'] == 'minigalnano') {
                $this->record_detail['image'] = '<a class="magnifier-thumb-wrapper" href="#"><img src="./lib/minigalnano/createthumb.php?filename=' . $sysconf['tg']['relative_url'] . 'images/docs/' . urlencode($this->record_detail['image']) . '&width=200" border="0" data-large-img-url="/slims/images/docs/' . urlencode($this->record_detail['image']) . '" class="thumb"/></a>';
            } else {
                $this->record_detail['image'] = '<a class="magnifier-thumb-wrapper" href="#"><img src="./lib/phpthumb/phpThumb.php?src=' . $sysconf['tg']['relative_url'] . 'images/docs/' . urlencode($this->record_detail['image']) . '&w=200" border="0" data-large-img-url="/slims/images/docs/' . urlencode($this->record_detail['image']) . '" class=" thumb" /></a>';
            }
        } else {
            $this->record_detail['image'] = '<a class="magnifier-thumb-wrapper" href="#"><img src="./images/default/image.png" border="0" class="thumb"/></a>';
        }
        // get the authors data
        $_biblio_authors_query = 'SELECT author_name, authority_type ';

        //ORCID PLUGIN V1.0
        if (isset($sysconf['plugin']['orcid']) AND $sysconf['plugin']['orcid'] !== false) {
            $_biblio_authors_query .= ' ,orcid_id ';
        }
            $_biblio_authors_query .= ' FROM mst_author AS a'
                . ' LEFT JOIN biblio_author AS ba ON a.author_id=ba.author_id WHERE ba.biblio_id=' . $this->detail_id . ' ORDER BY level ASC';
        
        $_biblio_authors_q = $this->obj_db->query($_biblio_authors_query);
        
        $authors = '';
        // authors for metadata
        $this->metadata .= '<meta name="DC.creator" content="';
        while ($data = $_biblio_authors_q->fetch_row()) {
            if ($data[1] == 'p') {
                $data[1] = "Personal Name";
            } elseif ($data[1] == 'o') {
                $data[1] = "Organizational Body";
            } elseif ($data[1] == 'c') {
                $data[1] = "Conference";
            }
            //ORCID PLUGIN V1.0
            if (isset($sysconf['plugin']['orcid']) AND $sysconf['plugin']['orcid'] !== false AND !empty($data[2])) {
                $orcid_link = " <a href='https://orcid.org/".$data[2]."' target='_blank'><img src='./images/orcid_16x16.png'></img></a> - ";
            }
            
            $authors .= '<a href="?author=' . urlencode('"' . $data[0] . '"') . '&search=Search" title="' . __('Click to view others documents with this author') . '">' . $data[0] ."</a>". (isset($orcid_link) ? $orcid_link : " - ") . $data[1] . "<br />";


            $this->metadata .= $data[0] . '; ';
        }
        $this->metadata .= '" />';
        $this->record_detail['authors'] = $authors;
        // free memory
        $_biblio_authors_q->free_result();


        // get the Supervisor data
        $_biblio_supervisors_q = $this->obj_db->query('SELECT supervisor_name, supervisor_number , level FROM mst_supervisor AS a'
            . ' LEFT JOIN biblio_supervisor AS ba ON a.supervisor_id=ba.supervisor_id WHERE ba.biblio_id=' . $this->detail_id . ' ORDER BY level ASC');
        $supervisors = '';
        // supervisor for metadata
        $this->metadata .= '<meta name="DC.supervisor" content="';
        while ($data = $_biblio_supervisors_q->fetch_row()) {
            if ($data[2] == '1') {
                $data[2] = "Dosen Pembimbing 1";
            } elseif ($data[2] == '2') {
                $data[2] = "Dosen Pembimbing 2";
            } elseif ($data[2] == '3') {
                $data[2] = "Dosen Pembimbing 3";
            }
            $supervisors .= '<a href="?supervisor=' . urlencode('"' . $data[0] . '"') . '&search=Search" title="' . __('Click to view others documents with this author') . '">' . $data[0] . "</a> - " . $data[1] . " - " . $data[2] . "<br />";
            $this->metadata .= $data[0] . '; ';
        }
        $this->metadata .= '" />';
        $this->record_detail['supervisors'] = $supervisors;
        // free memory
        $_biblio_supervisors_q->free_result();


        // get the EXAMINER data
        $_biblio_examiners_q = $this->obj_db->query('SELECT examiner_name, examiner_number, level FROM mst_examiner AS a'
            . ' LEFT JOIN biblio_examiner AS ba ON a.examiner_id=ba.examiner_id WHERE ba.biblio_id=' . $this->detail_id . ' ORDER BY level ASC');
        $examiners = '';
        // examiner for metadata
        $this->metadata .= '<meta name="DC.examiner" content="';
        while ($data = $_biblio_examiners_q->fetch_row()) {
            if ($data[2] == '1') {
                $data[2] = "Ketua Penguji";
            } elseif ($data[2] == '2') {
                $data[2] = "Penguji 1";
            } elseif ($data[2] == '3') {
                $data[2] = "Penguji 2";
            }
            $examiners .= '<a href="?examiner=' . urlencode('"' . $data[0] . '"') . '&search=Search" title="' . __('Click to view others documents with this author') . '">' . $data[0] . "</a> - " . $data[1] . " - " . $data[2] . "<br />";
            $this->metadata .= $data[0] . '; ';
        }
        $this->metadata .= '" />';
        $this->record_detail['examiners'] = $examiners;
        // free memory
        $_biblio_examiners_q->free_result();

        //crossref

        $_crossref_btns = '<a href="'.$this->record_detail['url_crossref'].'" target="_blank" >' . $this->record_detail['url_crossref']. "</a> <br />";
        $this->record_detail['url_crossref'] = $_crossref_btns;


        // // get the UNIQue ID
        // $_biblio_unique_q = $this->obj_db->query('SELECT biblio_id, unique_id FROM biblio as ba
        // WHERE ba.biblio_id=' . $this->detail_id . '');

        // $unique_id = '';
        // // contributor for metadata
        // $this->metadata .= '<meta name="DC.unique_id" content="';
       
        // while ($data = $_biblio_unique_q->fetch_row()) {
            
        //     $_detail_uniq = SWB . 'index.php?p=show_unique&id=' . $data[1];

        //     $unique_id .= '<a href="'.$_detail_uniq.'">' . " $data[0]</a> - " . $_detail_uniq . " <br />";
        //     $this->metadata .= $data[0] . '; ';
        // }
        // $this->metadata .= '" />';
        // $this->record_detail['unique_id'] = $unique_id;
        // // free memory
        // $_biblio_unique_q->free_result();



        // get the contributor data
        $_biblio_contributors_q = $this->obj_db->query('SELECT contributor_name, level FROM mst_contributor AS c'
            . ' LEFT JOIN biblio_contributor AS ba ON c.contributor_id=ba.contributor_id WHERE ba.biblio_id=' . $this->detail_id . ' ORDER BY level ASC');
        $contributors = '';
        // contributor for metadata
        $this->metadata .= '<meta name="DC.contributor" content="';
        while ($data = $_biblio_contributors_q->fetch_row()) {
            if ($data[1] == '1') {
                $data[1] = "Kontributor";
            } elseif ($data[1] == '2') {
                $data[1] = "Actor";
            } elseif ($data[1] == '3') {
                $data[1] = "Penyunting";
            }
            $contributors .= '<a href="?contributor=' . urlencode('"' . $data[0] . '"') . '&search=Search" title="' . __('Click to view others documents with this contributor') . '">' . $data[0] . "</a> - " . $data[1] .  "<br />";
            $this->metadata .= $data[0] . '; ';
        }
        $this->metadata .= '" />';
        $this->record_detail['contributors'] = $contributors;
        // free memory
        $_biblio_contributors_q->free_result();


        // get the topics data
        $_biblio_topics_q = $this->obj_db->query('SELECT topic FROM mst_topic AS a
            LEFT JOIN biblio_topic AS ba ON a.topic_id=ba.topic_id WHERE ba.biblio_id=' . $this->detail_id);
        $topics = '';
        $this->metadata .= '<meta name="DC.subject" content="';
        while ($data = $_biblio_topics_q->fetch_row()) {
            $topics .= '<a href="?subject=' . urlencode('"' . $data[0] . '"') . '&search=Search" title="' . __('Click to view others documents with this subject') . '">' . $data[0] . "</a><br />";
            $this->metadata .= $data[0] . '; ';
        }
        $this->metadata .= '" />';
        $this->record_detail['subjects'] = $topics;
        // free memory
        $_biblio_topics_q->free_result();

        // availability
        $this->record_detail['availability'] = '<div id="itemListLoad">LOADING LIST...</div>';
        $this->record_detail['availability'] .= '<script type="text/javascript">'
            . 'jQuery(document).ready(function() { jQuery.ajax({url: \'' . SWB . 'lib/contents/item_list.php\',
                type: \'POST\',
                data: \'id=' . $this->detail_id . '&ajaxsec_user=' . $sysconf['ajaxsec_user'] . '&ajaxsec_passwd=' . $sysconf['ajaxsec_passwd'] . '\',
                success: function(ajaxRespond) { jQuery(\'#itemListLoad\').html(ajaxRespond); } }); });</script>';

        // attachments
        $this->record_detail['file_att'] = '<div id="attachListLoad">LOADING LIST...</div>';
        $this->record_detail['file_att'] .= '<script type="text/javascript">'
            . 'jQuery(document).ready(function() { jQuery.ajax({url: \'' . SWB . 'lib/contents/attachment_list.php\',
                type: \'POST\',
                data: \'id=' . $this->detail_id . '&ajaxsec_user=' . $sysconf['ajaxsec_user'] . '&ajaxsec_passwd=' . $sysconf['ajaxsec_passwd'] . '\',
                success: function(ajaxRespond) { jQuery(\'#attachListLoad\').html(ajaxRespond); } }); });</script>';

        if ($sysconf['social_shares']) {
            // share buttons
            $_detail_link_encoded = urlencode('http://' . $_SERVER['SERVER_NAME'] . $_detail_link);
            $_share_btns = "\n" . '<ul class="share-buttons">' .
                '<li>' . __('Share to') . ': </li>' .
                '<li><a href="http://www.facebook.com/sharer.php?u=' . $_detail_link_encoded . '" title="Facebook" target="_blank"><img src="./images/default/fb.gif" alt="Facebook" /></a></li>' .
                '<li><a href="http://twitter.com/share?url=' . $_detail_link_encoded . '&text=' . urlencode($this->record_title) . '" title="Twitter" target="_blank"><img src="./images/default/tw.gif" alt="Twitter" /></a></li>' .
                '<li><a href="https://plus.google.com/share?url=' . $_detail_link_encoded . '" title="Google Plus" target="_blank"><img src="./images/default/gplus.gif" alt="Google" /></a></li>' .
                '<li><a href="http://www.digg.com/submit?url=' . $_detail_link_encoded . '" title="Digg It" target="_blank"><img src="./images/default/digg.gif" alt="Digg" /></a></li>' .
                '<li><a href="http://reddit.com/submit?url=' . $_detail_link_encoded . '&title=' . urlencode($this->record_title) . '" title="Reddit" target="_blank"><img src="./images/default/rdit.gif" alt="Reddit" /></a></li>' .
                '<li><a href="http://www.linkedin.com/shareArticle?mini=true&url=' . $_detail_link_encoded . '" title="LinkedIn" target="_blank"><img src="./images/default/lin.gif" alt="LinkedIn" /></a></li>' .
                '<li><a href="http://www.stumbleupon.com/submit?url=' . $_detail_link_encoded . '&title=' . urlencode($this->record_title) . '" title="Stumbleupon" target="_blank"><img src="./images/default/su.gif" alt="StumbleUpon" /></a></li>' .
                '</ul>' . "\n";

            $this->record_detail['social_shares'] = $_share_btns;
        }

        return $this->record_detail;
    }


    /**
     * Record detail output in MODS (Metadata Object Description Schema) XML mode
     * @return  array
     *
     */
    public function MODSoutput()
    {
        // get global configuration vars array
        global $sysconf;

        // set prefix and suffix
        $this->detail_prefix = '<modsCollection xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.loc.gov/mods/v3" xmlns:slims="http://slims.web.id" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-3.xsd">' . "\n";
        $this->detail_suffix = '</modsCollection>';

        $_xml_output = '<mods version="3.3" ID="' . $this->detail_id . '">' . "\n";

        // parse title
        $this->record_detail['title'] = preg_replace('/\//i', '&#47;', $this->record_detail['title']);
        $_title_sub = '';
        $_title_statement_resp = '';
        if (stripos($this->record_detail['title'], ':') !== false) {
            $_title_main = trim(substr_replace($this->record_detail['title'], '', stripos($this->record_detail['title'], ':') + 1));
            $_title_sub = trim(substr_replace($this->record_detail['title'], '', 0, stripos($this->record_detail['title'], ':') + 1));
        } else if (stripos($this->record_detail['title'], '/') !== false) {
            $_title_statement_resp = trim(substr_replace($this->record_detail['title'], '', stripos($this->record_detail['title'], '/') + 1));
        } else {
            $_title_main = trim($this->record_detail['title']);
        }

        $_xml_output .= '<titleInfo>' . "\n" . '<title><![CDATA[' . $_title_main . ']]></title>' . "\n";
        if ($_title_sub) {
            $_xml_output .= '<subTitle><![CDATA[' . $_title_sub . ']]></subTitle>' . "\n";
        }
        $_xml_output .= '</titleInfo>' . "\n";

        // personal name
        // get the authors data
        $_biblio_authors_q = $this->obj_db->query('SELECT a.*,ba.level FROM mst_author AS a'
            . ' LEFT JOIN biblio_author AS ba ON a.author_id=ba.author_id WHERE ba.biblio_id=' . $this->detail_id);
        while ($_auth_d = $_biblio_authors_q->fetch_assoc()) {
            $_xml_output .= '<name type="' . $sysconf['authority_type'][$_auth_d['authority_type']] . '" authority="' . $_auth_d['auth_list'] . '">' . "\n"
                . '<namePart>' . $_auth_d['author_name'] . '</namePart>' . "\n"
                . '<role><roleTerm type="text">' . $sysconf['authority_level'][$_auth_d['level']] . '</roleTerm></role>' . "\n"
                . '</name>' . "\n";
        }
        $_biblio_authors_q->free_result();

        // personal name
        // get the supervisors data
        $_biblio_supervisors_q = $this->obj_db->query('SELECT a.*,ba.level FROM mst_supervisor AS a'
            . ' LEFT JOIN biblio_supervisor AS ba ON a.supervisor_id=ba.supervisor_id WHERE ba.biblio_id=' . $this->detail_id);
        while ($_auth_d = $_biblio_supervisors_q->fetch_assoc()) {
            $_xml_output .= '<name type="' . $sysconf['supervisor_type'][$_auth_d['supervisor_type']] . '" authority="' . $_auth_d['supervisor_list'] . '">' . "\n"
                . '<namePart>' . $_auth_d['supervisor_name'] . '</namePart>' . "\n"
                . '<role><roleTerm type="text">' . $sysconf['authority_level_supervisor'][$_auth_d['level']] . '</roleTerm></role>' . "\n"
                . '</name>' . "\n";
        }
        $_biblio_supervisors_q->free_result();


        // personal name
        // get the examiners data
        $_biblio_examiners_q = $this->obj_db->query('SELECT a.*,ba.level FROM mst_examiner AS a'
            . ' LEFT JOIN biblio_examiner AS ba ON a.examiner_id=ba.examiner_id WHERE ba.biblio_id=' . $this->detail_id);
        while ($_auth_d = $_biblio_examiners_q->fetch_assoc()) {
            $_xml_output .= '<name type="' . $sysconf['examiner_type'][$_auth_d['examiner_type']] . '">' . "\n"
                . '<namePart>' . $_auth_d['examiner_name'] . '</namePart>' . "\n"
                . '<role><roleTerm type="text">' . $sysconf['authority_level_examiner'][$_auth_d['level']] . '</roleTerm></role>' . "\n"
                . '</name>' . "\n";
        }
        $_biblio_examiners_q->free_result();

        // get the contributors data
        $_biblio_contributors_q = $this->obj_db->query('SELECT c.*,bc.level FROM mst_contributor AS c'
            . ' LEFT JOIN biblio_contributor AS bc ON c.contributor_id=bc.contributor_id WHERE bc.biblio_id=' . $this->detail_id);
        while ($_auth_d = $_biblio_contributors_q->fetch_assoc()) {
            $_xml_output .= '<name type="' . $sysconf['contributor_type'][$_auth_d['contributor_type']] . '">' . "\n"
                . '<namePart>' . $_auth_d['contributor_name'] . '</namePart>' . "\n"
                . '<role><roleTerm type="text">' . $sysconf['authority_level_contributor'][$_auth_d['level']] . '</roleTerm></role>' . "\n"
                . '</name>' . "\n";
        }
        $_biblio_contributors_q->free_result();




        // resources type
        $_xml_output .= '<typeOfResource manuscript="yes" collection="yes"><![CDATA[mixed material]]></typeOfResource>' . "\n";

        // gmd
        $_xml_output .= '<genre authority="marcgt"><![CDATA[bibliography]]></genre>' . "\n";

        // imprint/publication data
        $_xml_output .= '<originInfo>' . "\n";
        $_xml_output .= '<place><placeTerm type="text"><![CDATA[' . $this->record_detail['publish_place'] . ']]></placeTerm></place>' . "\n"
            . '<publisher><![CDATA[' . $this->record_detail['publisher_name'] . ']]></publisher>' . "\n"
            . '<dateIssued><![CDATA[' . $this->record_detail['publish_year'] . ']]></dateIssued>' . "\n";
        if ((int) $this->record_detail['frequency_id'] > 0) {
            $_xml_output .= '<issuance><![CDATA[continuing]]></issuance>' . "\n";
            $_xml_output .= '<frequency><![CDATA[' . $this->record_detail['frequency'] . ']]></frequency>' . "\n";
        } else {
            $_xml_output .= '<issuance><![CDATA[monographic]]></issuance>' . "\n";
        }
        $_xml_output .= '<edition><![CDATA[' . $this->record_detail['edition'] . ']]></edition>' . "\n";
        $_xml_output .= '</originInfo>' . "\n";

        // language
        $_xml_output .= '<language>' . "\n";
        $_xml_output .= '<languageTerm type="code"><![CDATA[' . $this->record_detail['language_id'] . ']]></languageTerm>' . "\n";
        $_xml_output .= '<languageTerm type="text"><![CDATA[' . $this->record_detail['language_name'] . ']]></languageTerm>' . "\n";
        $_xml_output .= '</language>' . "\n";


        // item_type
        $_xml_output .= '<itemType>' . "\n";
        $_xml_output .= '<itemTypeTerm type="code"><![CDATA[' . $this->record_detail['item_type_id'] . ']]></itemTypeTerm>' . "\n";
        $_xml_output .= '<itemTypeTerm type="text"><![CDATA[' . $this->record_detail['item_type_name'] . ']]></itemTypeTerm>' . "\n";
        $_xml_output .= '</itemType>' . "\n";


        // copyright
        $_xml_output .= '<copyright>' . "\n";
        $_xml_output .= '<copyrightTerm type="code"><![CDATA[' . $this->record_detail['copyright_id'] . ']]></copyrightTerm>' . "\n";
        $_xml_output .= '<copyrightTerm type="text"><![CDATA[' . $this->record_detail['copyright_name'] . ']]></copyrightTerm>' . "\n";
        $_xml_output .= '</copyright>' . "\n";

        // Physical Description/Collation
        $_xml_output .= '<physicalDescription>' . "\n";
        $_xml_output .= '<form authority="gmd"><![CDATA[' . $this->record_detail['gmd_name'] . ']]></form>' . "\n";
        $_xml_output .= '<extent><![CDATA[' . $this->record_detail['collation'] . ']]></extent>' . "\n";
        $_xml_output .= '</physicalDescription>' . "\n";

        // Series title
        if ($this->record_detail['series_title']) {
            $_xml_output .= '<relatedItem type="series">' . "\n";
            $_xml_output .= '<titleInfo>' . "\n";
            $_xml_output .= '<title><![CDATA[' . $this->record_detail['series_title'] . ']]></title>' . "\n";
            $_xml_output .= '</titleInfo>' . "\n";
            $_xml_output .= '</relatedItem>' . "\n";
        }

        // Note
        $_xml_output .= '<note>' . $this->record_detail['notes'] . '</note>' . "\n";
        if ($_title_statement_resp) {
            $_xml_output .= '<note type="statement of responsibility"><![CDATA[' . $_title_statement_resp . ']]></note>';
        }

        // subject/topic
        $_biblio_topics_q = $this->obj_db->query('SELECT t.topic, t.topic_type, t.auth_list, bt.level FROM mst_topic AS t
            LEFT JOIN biblio_topic AS bt ON t.topic_id=bt.topic_id WHERE bt.biblio_id=' . $this->detail_id . ' ORDER BY t.auth_list');
        while ($_topic_d = $_biblio_topics_q->fetch_assoc()) {
            $_subject_type = strtolower($sysconf['subject_type'][$_topic_d['topic_type']]);
            $_xml_output .= '<subject authority="' . $_topic_d['auth_list'] . '">';
            $_xml_output .= '<' . $_subject_type . '><![CDATA[' . $_topic_d['topic'] . ']]></' . $_subject_type . '>';
            $_xml_output .= '</subject>' . "\n";
        }

        // classification
        $_xml_output .= '<classification><![CDATA[' . $this->record_detail['classification'] . ']]></classification>';

        // ministry
        $_xml_output .= '<ministry><![CDATA[' . $this->record_detail['code_ministry'] . ']]></ministry>';

        // student ID
        $_xml_output .= '<studentID><![CDATA[' . $this->record_detail['student_id'] . ']]></studentID>';

        // ISBN/ISSN
        $_xml_output .= '<identifier type="isbn"><![CDATA[' . str_replace(array('-', ' '), '', $this->record_detail['isbn_issn']) . ']]></identifier>';

        // departement
        $_xml_output .= '<departementID><![CDATA[' . $this->record_detail['departement'] . ']]></departementID>';

        //crossreff
        $_xml_output .= '<urlCrossref><![CDATA[' . $this->record_detail['url_crossref'] . ']]></urlCrossref>';
         // ministry
        //  $_xml_output .= '<unique_id><![CDATA[' . $this->record_detail['unique_id'] . ']]></unique_id>';
        // Location and Copies information
        $_xml_output .= '<location>' . "\n";
        $_xml_output .= '<physicalLocation><![CDATA[' . $sysconf['library_name'] . ' ' . $sysconf['library_subname'] . ']]></physicalLocation>' . "\n";
        $_xml_output .= '<shelfLocator><![CDATA[' . $this->record_detail['call_number'] . ']]></shelfLocator>' . "\n";
        $_copy_q = $this->obj_db->query('SELECT i.item_code, i.call_number, stat.item_status_name, loc.location_name, stat.rules, i.site FROM item AS i '
            . 'LEFT JOIN mst_item_status AS stat ON i.item_status_id=stat.item_status_id '
            . 'LEFT JOIN mst_location AS loc ON i.location_id=loc.location_id '
            . 'WHERE i.biblio_id=' . $this->detail_id);
        if ($_copy_q->num_rows > 0) {
            $_xml_output .= '<holdingSimple>' . "\n";
            while ($_copy_d = $_copy_q->fetch_assoc()) {
                $_xml_output .= '<copyInformation>' . "\n";
                $_xml_output .= '<numerationAndChronology type="1"><![CDATA[' . $_copy_d['item_code'] . ']]></numerationAndChronology>' . "\n";
                $_xml_output .= '<sublocation><![CDATA[' . $_copy_d['location_name'] . ($_copy_d['site'] ? ' (' . $_copy_d['site'] . ')' : '') . ']]></sublocation>' . "\n";
                $_xml_output .= '<shelfLocator><![CDATA[' . $_copy_d['call_number'] . ']]></shelfLocator>' . "\n";
                $_xml_output .= '</copyInformation>' . "\n";
            }
            $_xml_output .= '</holdingSimple>' . "\n";
        }
        $_xml_output .= '</location>' . "\n";

        // digital files
        $attachment_q = $this->obj_db->query('SELECT att.*, f.* FROM biblio_attachment AS att
            LEFT JOIN files AS f ON att.file_id=f.file_id WHERE att.biblio_id=' . $this->detail_id . ' AND att.access_type=\'public\' LIMIT 20');
        if ($attachment_q->num_rows > 0) {
            $_xml_output .= '<slims:digitals>' . "\n";
            while ($attachment_d = $attachment_q->fetch_assoc()) {
                // check member type privileges
                if ($attachment_d['access_limit']) {
                    continue;
                }
                $_xml_output .= '<slims:digital_item id="' . $attachment_d['file_id'] . '" url="' . trim($attachment_d['file_url']) . '" '
                    . 'path="' . htmlentities($attachment_d['file_dir'] . '/' . $attachment_d['file_name']) . '" mimetype="' . $attachment_d['mime_type'] . '">';
                $_xml_output .= '<![CDATA[' . $attachment_d['file_title'] . ']]>';
                $_xml_output .= '</slims:digital_item>' . "\n";
            }
            $_xml_output .= '</slims:digitals>';
        }

        // image
        if (!empty($this->record_detail['image'])) {
            $_image = urlencode($this->record_detail['image']);
            $_xml_output .= '<slims:image><![CDATA[' . $_image . ']]></slims:image>' . "\n";
        }

        // record info
        $_xml_output .= '<recordInfo>' . "\n";
        $_xml_output .= '<recordIdentifier><![CDATA[' . $this->detail_id . ']]></recordIdentifier>' . "\n";
        $_xml_output .= '<recordCreationDate encoding="w3cdtf"><![CDATA[' . $this->record_detail['input_date'] . ']]></recordCreationDate>' . "\n";
        $_xml_output .= '<recordChangeDate encoding="w3cdtf"><![CDATA[' . $this->record_detail['last_update'] . ']]></recordChangeDate>' . "\n";
        $_xml_output .= '<recordOrigin><![CDATA[machine generated]]></recordOrigin>' . "\n";
        $_xml_output .= '</recordInfo>';

        $_xml_output .= '</mods>';

        return $_xml_output;
    }



    /**
     * Record detail output in MODS (Metadata Object Description Schema) XML mode
     * @return  array
     *
     */
    public function JSONoutput()
    {
        // get global configuration vars array
        global $sysconf;

      


        $data['biblio_id'] = $this->detail_id;

        // parse title
        $this->record_detail['title'] = preg_replace('/\//i', '&#47;', $this->record_detail['title']);
        $_title_sub = '';
        $_title_statement_resp = '';
        if (stripos($this->record_detail['title'], ':') !== false) {
            $_title_main = trim(substr_replace($this->record_detail['title'], '', stripos($this->record_detail['title'], ':') + 1));
            $_title_sub = trim(substr_replace($this->record_detail['title'], '', 0, stripos($this->record_detail['title'], ':') + 1));
        } else if (stripos($this->record_detail['title'], '/') !== false) {
            $_title_statement_resp = trim(substr_replace($this->record_detail['title'], '', stripos($this->record_detail['title'], '/') + 1));
        } else {
            $_title_main = trim($this->record_detail['title']);
        }

        

        $data['title'] =  $_title_main;
        $data['type'] = $this->record_detail['gmd_name'];
        $data['gmd_name'] = "text";
        $data['publisher_name'] = $this->record_detail['publisher_name'];
        $data['publish_place'] = $this->record_detail['publish_place'];
        $data['publisher_year'] = $this->record_detail['publish_year'];
        $data['collation'] = $this->record_detail['collation'];
        $data['series_title'] =(isset($this->record_detail['series_title']) ? $this->record_detail['series_title'] : "");
        $data['call_number'] = $this->record_detail['call_number'];
        $data['language_name'] =  $this->record_detail['language_name'];
        $data['source'] = "mixed material";
        $data['classification'] = $this->record_detail['classification'];
        $data['notes'] = $this->record_detail['notes'];
        $data['image'] = $this->record_detail['image'];
        

        // digital files
        $attachment_q = $this->obj_db->query('SELECT att.*, f.* FROM biblio_attachment AS att
            LEFT JOIN files AS f ON att.file_id=f.file_id WHERE att.biblio_id=' . $this->detail_id . ' AND att.access_type=\'public\' LIMIT 20');
        if ($attachment_q->num_rows > 0) {
            while ($attachment_d = $attachment_q->fetch_assoc()) {
                // check member type privileges
                if ($attachment_d['access_limit']) {
                    continue;
                }
                
                $digital_item['slims:digital_item']['#cdata'] = $attachment_d['file_title'];
               
                $digital_items[] = $digital_item;
            }
        }
        $data['files'] =  $digital_items;

        // personal name
        // get the authors data
        $_biblio_authors_q = $this->obj_db->query('SELECT a.*,ba.level FROM mst_author AS a'
            . ' LEFT JOIN biblio_author AS ba ON a.author_id=ba.author_id WHERE ba.biblio_id=' . $this->detail_id);
        while ($_auth_d = $_biblio_authors_q->fetch_assoc()) {
            $name['authors']['author_name'] = $_auth_d['author_name'];
            $name['authors']['authority_type'] = $sysconf['authority_level'][$_auth_d['level']];

            $data['name'][] = $name;
        }
        $_biblio_authors_q->free_result();

        //Subject
        $_biblio_topics_q = $this->obj_db->query('SELECT t.topic, t.topic_type, t.auth_list, bt.level FROM mst_topic AS t
            LEFT JOIN biblio_topic AS bt ON t.topic_id=bt.topic_id WHERE bt.biblio_id=' . $this->detail_id . ' ORDER BY t.auth_list');
        while ($_topic_d = $_biblio_topics_q->fetch_assoc()) {
            $_subject_type = strtolower($sysconf['subject_type'][$_topic_d['topic_type']]);
            
            $sub['subject']['topic'] = $_topic_d['topic'];
            $sub['subject']['topic_type'] = "t";
            $data['subjects'][] = $sub;
        }

        $data['input_date'] = $this->record_detail['input_date'];
        $data['last_update'] = $this->record_detail['last_update'];


        $_json_output = $data;
        return $_json_output;
    }


    /**
     * Record detail output in Dublin Core XML mode
     * @return  array
     *
     */
    public function DublinCoreOutput()
    {
        // get global configuration vars array
        global $sysconf;
        $protocol = isset($_SERVER["HTTPS"]) ? 'https' : 'http';
        $xml = new XMLWriter();
        $xml->openMemory();
        $xml->setIndent(true);

        // set prefix and suffix
        $this->detail_prefix = '';
        $this->detail_suffix = '';

        $_xml_output = '';

        $_title_main = utf8_encode($this->record_detail['title']);

        // title
        $xml->startElementNS('dc', 'title', null);
        $xml->writeCdata($_title_main);
        $xml->endElement();

        // get the authors data
        $_biblio_authors_q = $this->obj_db->query('SELECT a.*,ba.level FROM mst_author AS a'
            . ' LEFT JOIN biblio_author AS ba ON a.author_id=ba.author_id WHERE ba.biblio_id=' . $this->detail_id);
        while ($_auth_d = $_biblio_authors_q->fetch_assoc()) {
            $xml->startElementNS('dc', 'creator', null);
            $xml->writeCdata($_auth_d['author_name']);
            $xml->endElement();
        }
        $_biblio_authors_q->free_result();

        // student ID
        $xml->startElementNS('dc', 'studentID', null);
        $xml->writeCdata($this->record_detail['student_id']);
        $xml->endElement();

        // Ministry
        $xml->startElementNS('dc', 'code_ministry', null);
        $xml->writeCdata($this->record_detail['code_ministry']);
        $xml->endElement();

        // departement ID
        $xml->startElementNS('dc', 'departementID', null);
        $xml->writeCdata($this->record_detail['departement_id']);
        $xml->endElement();

          // Crossref
          $xml->startElementNS('dc', 'urlCrossref', null);
          $xml->writeCdata($this->record_detail['url_crossref']);
          $xml->endElement();

        //   // unique_id
        //   $xml->startElementNS('dc', 'unique_id', null);
        //   $xml->writeCdata($this->record_detail['unique_id']);
        //   $xml->endElement();

        // get the supervisors data
        $_biblio_supervisors_q = $this->obj_db->query('SELECT a.*,ba.level FROM mst_supervisor AS a'
            . ' LEFT JOIN biblio_supervisor AS ba ON a.supervisor_id=ba.supervisor_id WHERE ba.biblio_id=' . $this->detail_id);
        while ($_auth_d = $_biblio_supervisors_q->fetch_assoc()) {
            $xml->startElementNS('dc', 'creator', null);
            $xml->writeCdata($_auth_d['author_name']);
            $xml->endElement();
        }
        $_biblio_supervisors_q->free_result();


        // get the examiners data
        $_biblio_examiners_q = $this->obj_db->query('SELECT a.*,ba.level FROM mst_examiner AS a'
            . ' LEFT JOIN biblio_examiner AS ba ON a.examiner_id=ba.examiner_id WHERE ba.biblio_id=' . $this->detail_id);
        while ($_auth_d = $_biblio_examiners_q->fetch_assoc()) {
            $xml->startElementNS('dc', 'creator', null);
            $xml->writeCdata($_auth_d['examiner_name']);
            $xml->endElement();
        }
        $_biblio_examiners_q->free_result();

        // get the contributors data
        $_biblio_contributors_q = $this->obj_db->query('SELECT c.*,bc.level FROM mst_contributor AS c'
            . ' LEFT JOIN biblio_contributor AS bc ON c.contributor_id=bc.contributor_id WHERE bc.biblio_id=' . $this->detail_id);
        while ($_auth_d = $_biblio_contributors_q->fetch_assoc()) {
            $xml->startElementNS('dc', 'contributor', null);
            $xml->writeCdata($_auth_d['contributor_name']);
            $xml->endElement();
        }
        $_biblio_contributors_q->free_result();


        // imprint/publication data
        $xml->startElementNS('dc', 'publisher', null);
        $xml->writeCdata($this->record_detail['publisher_name']);
        $xml->endElement();

        if ($this->record_detail['publish_year']) {
            $xml->startElementNS('dc', 'date', null);
            $xml->writeCdata($this->record_detail['publish_year']);
            $xml->endElement();
        } else {
            $xml->startElementNS('dc', 'date', null);
            $xml->fullEndElement();
        }

        // edition
        $xml->startElementNS('dc', 'hasVersion', null);
        $xml->writeCdata($this->record_detail['edition']);
        $xml->endElement();

        // language
        $xml->startElementNS('dc', 'language', null);
        $xml->writeCdata($this->record_detail['language_name']);
        $xml->endElement();

        // Item Type
        $xml->startElementNS('dc', 'item_type', null);
        $xml->writeCdata($this->record_detail['item_type_name']);
        $xml->endElement();


        // copyright
        $xml->startElementNS('dc', 'copyright', null);
        $xml->writeCdata($this->record_detail['copyright_name']);
        $xml->endElement();

        // Physical Description/Collation
        $xml->startElementNS('dc', 'medium', null);
        $xml->writeCdata($this->record_detail['gmd_name']);
        $xml->endElement();

        $xml->startElementNS('dc', 'format', null);
        $xml->writeCdata($this->record_detail['gmd_name']);
        $xml->endElement();

        $xml->startElementNS('dc', 'extent', null);
        $xml->writeCdata($this->record_detail['collation']);
        $xml->endElement();

        if ((int) $this->record_detail['frequency_id'] > 0) {
            $xml->startElementNS('dc', 'format', null);
            $xml->writeCdata('serial');
            $xml->endElement();
        }

        // Series title
        if ($this->record_detail['series_title']) {
            $xml->startElementNS('dc', 'isPartOf', null);
            $xml->writeCdata($this->record_detail['series_title']);
            $xml->endElement();
        }

        // Note
        $xml->startElementNS('dc', 'description', null);
        $xml->writeCdata($this->record_detail['notes']);
        $xml->endElement();

        $xml->startElementNS('dc', 'abstract', null);
        $xml->writeCdata($this->record_detail['notes']);
        $xml->endElement();

        // subject/topic
        $_biblio_topics_q = $this->obj_db->query('SELECT t.topic, t.topic_type, t.auth_list, bt.level FROM mst_topic AS t
          LEFT JOIN biblio_topic AS bt ON t.topic_id=bt.topic_id WHERE bt.biblio_id=' . $this->detail_id . ' ORDER BY t.auth_list');
        while ($_topic_d = $_biblio_topics_q->fetch_assoc()) {
            $xml->startElementNS('dc', 'subject', null);
            $xml->writeCdata($_topic_d['topic']);
            $xml->endElement();
        }
        $_biblio_topics_q->free_result();

        // classification
        $xml->startElementNS('dc', 'subject', null);
        $xml->writeCdata($this->record_detail['classification']);
        $xml->endElement();

        // Permalink
        $permalink = $protocol . '://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . SWB . 'index.php?p=show_detail&id=' . $this->detail_id;
        $xml->startElementNS('dc', 'identifier', null);
        $xml->writeCdata($permalink);
        $xml->endElement();

        // ISBN/ISSN
        $xml->startElementNS('dc', 'identifier', null);
        $xml->writeCdata(str_replace(array('-', ' '), '', $this->record_detail['isbn_issn']));
        $xml->endElement();

        // Call Number
        $xml->startElementNS('dc', 'identifier', null);
        $xml->writeCdata($this->record_detail['call_number']);
        $xml->endElement();

        $_copy_q = $this->obj_db->query('SELECT i.item_code, i.call_number, stat.item_status_name, loc.location_name, stat.rules, i.site FROM item AS i '
            . 'LEFT JOIN mst_item_status AS stat ON i.item_status_id=stat.item_status_id '
            . 'LEFT JOIN mst_location AS loc ON i.location_id=loc.location_id '
            . 'WHERE i.biblio_id=' . $this->detail_id);
        if ($_copy_q->num_rows > 0) {
            while ($_copy_d = $_copy_q->fetch_assoc()) {
                $xml->startElementNS('dc', 'hasPart', null);
                $xml->writeCdata($_copy_d['item_code']);
                $xml->endElement();
            }
        }
        $_copy_q->free_result();

        // digital files
        $attachment_q = $this->obj_db->query('SELECT att.*, f.* FROM biblio_attachment AS att
            LEFT JOIN files AS f ON att.file_id=f.file_id WHERE att.biblio_id=' . $this->detail_id . ' AND att.access_type=\'public\' LIMIT 20');
        if ($attachment_q->num_rows > 0) {
            while ($attachment_d = $attachment_q->fetch_assoc()) {
                $dir = '';
                if ($attachment_d['file_dir']) {
                    $dir = $attachment_d['file_dir'] . '/';
                }
                $_xml_output .= '<dc:relation><![CDATA[';
                // check member type privileges
                if ($attachment_d['access_limit']) {
                    continue;
                }
                $xml->startElementNS('dc', 'relation', null);
                $xml->writeCdata($protocol . '://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . REPO_WBS . $dir . trim(urlencode($attachment_d['file_name'])));
                $xml->endElement();
            }
        }

        // image
        if (!empty($this->record_detail['image'])) {
            $_image = $protocol . '://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . IMGBS . 'docs/' . urlencode($this->record_detail['image']);
            $xml->startElementNS('dc', 'relation', null);
            $xml->writeCdata($_image);
            $xml->endElement();
        }

        return $xml->outputMemory();
    }


    /**
     * Get Record detail prefix
     */
    public function getPrefix()
    {
        return $this->detail_prefix;
    }


    /**
     * Get Record detail suffix
     */
    public function getSuffix()
    {
        return $this->detail_suffix;
    }
}
