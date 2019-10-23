<?php
$debug = true;

# Shows the records in prints
function show_records($dbc) {
    
    $query = 'SELECT fname, lname, num FROM presidents ORDER BY fname ASC' ;

	# Create a query to get the name and price sorted by price
	$results = mysqli_query( $dbc , $query ) ;

# Show results
if( $results )
{
  # But...wait until we know the query succeeded before
  # starting the table.
  echo '<H1>Presidents</H1>' ;
  echo '<TABLE>';
  echo '<TR>';
  echo '<TH>FIRST NAME</TH>';
  echo '<TH>LAST NAME</TH>';
  echo '<TH>NUMBER</TH>';
  echo '</TR>';

  # For each row result, generate a table row
  while ( $row = mysqli_fetch_array( $results , MYSQLI_ASSOC ) )
  {
echo "<table border=\"1\" cellpadding=\"4\" width=\"4\" cellspacing=\"4\">\n";
      
    echo '<TD>' . $row['fname'] . '</TD>' ;
    echo '<TD>' . $row['lname'] . '</TD>' ;
    echo '<TD>' . $row['num'] . '</TD>' ;
      
    echo '</TR>' ;
  }
    

  # End the table
  echo '</TABLE>';

  # Free up the results in memory
  mysqli_free_result( $results ) ;
    }
}
# Inserts a record into the prints table
function insert_record($dbc, $num, $fname, $lname) {
  $query = 'INSERT INTO presidents(num, fname, lname) VALUES ("' . $num . '" , "' . $fname . '" , "' . $lname . '" )' ;
  show_query($query);

  $results = mysqli_query($dbc,$query) ;
  check_results($results) ;

  return $results ;
}

# Shows the query as a debugging aid
function show_query($query) {
  global $debug;

  if($debug)
    echo "<p>Query = $query</p>" ;
}

# Checks the query results as a debugging aid
function check_results($results) {
  global $dbc;

  if($results != true)
    echo '<p>SQL ERROR = ' . mysqli_error( $dbc ) . '</p>'  ;
}

function valid_number($num){
    if(empty($num) || !is_numeric($num))
    return false ;   
    else {
    $num = intval($num) ; 
    if($num <= 0)
        return false ;
  }
  return true;
}


function valid_name($name){
    
     if(empty($name)){
         return false;
     } else {
         return true;
     }   
}

?>
<style>
    .test {
        font-size: 128px;

    }
</style>