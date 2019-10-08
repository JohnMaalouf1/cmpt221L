<!--
Author: John Maalouf Patrick Peko, Max Tieche, Jackson O'Sullivan
Presidents PHP

This PHP script was modified based on result.php in McGrath
(2012).
It demonstrates how to ...
  1) Connect to MySQL.
  2) Write a complex query.
  3) Format the results into an HTML table.
-->
<!DOCTYPE html>
<html>

<title>
    Dead Presidents
</title>
<?php
# Connect to MySQL server and the database
require( 'includes/connect_db.php' ) ;

# Create a query to get the name and price sorted by price
$query = 'SELECT fname, lname, num, dob FROM presidents ORDER BY fname ASC' ;

# Execute the query
$results = mysqli_query( $dbc , $query ) ;

# Show results
if( $results )
{
  # But...wait until we know the query succeeded before
  # starting the table.
  echo '<H1>Prints</H1>' ;
  echo '<TABLE>';
  echo '<TR>';
  echo '<TH>FIRST NAME</TH>';
  echo '<TH>LAST NAME</TH>';
  echo '<TH>NUMBER</TH>';
  echo '<TH>DATE OF BIRTH</TH>';
  echo '</TR>';

  # For each row result, generate a table row
  while ( $row = mysqli_fetch_array( $results , MYSQLI_ASSOC ) )
  {
    echo '<table border=\"0\"><tr>';
    echo '<TD>' . $row['fname'] . '</TD>' ;
    echo '<TD>' . $row['lname'] . '</TD>' ;
    echo '<TD>' . $row['num'] . '</TD>' ;
    echo '<TD>' . $row['dob'] . '</TD>' ;
    echo '</TR>' ;
  }

  # End the table
  echo '</TABLE>';

  # Free up the results in memory
  mysqli_free_result( $results ) ;
}
else
{
  # If we get here, something has gone wrong
  echo '<p>' . mysqli_error( $dbc ) . '</p>'  ;
}

# Close the connection
mysqli_close( $dbc ) ;
?>

</html
