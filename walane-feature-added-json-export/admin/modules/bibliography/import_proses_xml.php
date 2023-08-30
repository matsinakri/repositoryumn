
<?php
//import.php
sleep(3);
$output = '';

if(isset($_FILES['file']['name']) &&  $_FILES['file']['name'] != '')
{
  $valid_extension = array('xml');
  $file_data       = explode('.', $_FILES['file']['name']);
  $file_extension  = end($file_data);
  if(in_array($file_extension, $valid_extension))
  {
    $data      = simplexml_load_file($_FILES['file']['tmp_name']);
    $gmdid     = 1;
    $typeid    = 3;
    $connect   = new PDO('mysql:host=127.0.0.1;dbname=setiadi','root', '');
    $query     = "INSERT INTO biblio ( title, item_type_id, notes, isbn_issn, url_crossref) 
                  VALUES(:title, :item_type, :notes, :isbn_issn, :url_crossref);";
    $statement = $connect->prepare($query);

    $inputAuthor = "INSERT INTO mst_author (author_name, authority_type, input_date)
                    VALUES (:name, :type, :d)";
    $execAuthor = $connect->prepare($inputAuthor);

    $inputBiblioAuthor = "INSERT INTO biblio_author (biblio_id, author_id, level)
                    VALUES (:bi, :ai, :lv)";
    $execBiblioAuthor = $connect->prepare($inputBiblioAuthor);    

    for($i = 0; $i < count($data); $i++)
    {

      // insert biblio
      $statement->execute([
        ':title'        => $data->mods[$i]->titleInfo->title->__toString(),
        ':notes'        => $data->mods[$i]->abstract->__toString(),
        ':isbn_issn'    => $data->mods[$i]->issn->__toString(),
        ':url_crossref' => $data->mods[$i]->urlCrossref->__toString(),
        ':item_type'    => 7
      ]);

      $lastId = $connect->lastInsertId();

      // insert author & biblio author
      for ($j = 0; $j < count($data->mods[$i]->name); $j++) {
        $execAuthor->execute([
          ':name' => $data->mods[$i]->name[$j]->namePart->__toString(),
          ':type' => 'p',
          ':d'    => date('Y-m-d')
        ]);

        $execBiblioAuthor->execute([
          ':bi' => $lastId,
          ':ai' => $connect->lastInsertId(),
          ':lv' => 1
        ]);
      }

    }

    $result = $statement->fetchAll();
    if(isset($result))
    {
      $output = '<div class="alert alert-success">Import Data Done</div>';
    }
  }
  else
  {
    $output = '<div class="alert alert-warning">Invalid File</div>';
  }
}
else
{
  $output = '<div class="alert alert-warning">Please Select XML File</div>';
}

echo $output;

?>