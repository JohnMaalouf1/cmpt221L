<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta name="viewport" content="width=device-width">
    <title>Verified Presidents</title>
    <link href="/library/skin/tool_base.css" type="text/css" rel="stylesheet" media="all" />
    <link href="/library/skin/morpheus-default/tool.css" type="text/css" rel="stylesheet" media="all" />
    <script type="text/javascript" src="/library/js/headscripts.js"></script>
    <style>
        body {
            padding: 5px !important;
        }

    </style>
</head>

<body>
    <!--
This PHP script was modified based on result.php in McGrath (2012).
It demonstrates how to ...
  1) Connect to MySQL.
  2) Write a complex query.
  3) Format the results into an HTML table.
  4) Update MySQL with form input.
By Ron Coleman
-->
    <!DOCTYPE html>
    <html>
    <?php
# Connect to MySQL server and the database
require( 'includes/connect_db.php' ) ;

# Includes these helper functions
require( 'includes/helpers.php' ) ;

if ($_SERVER[ 'REQUEST_METHOD' ] == 'POST') {
    
	$num = $_POST['num'] ;

    $fname = $_POST['fname'] ;
    
    $lname = $_POST['lname'] ;

if(!valid_number($num) && !valid_name($fname) && !valid_name($lname)){
    echo '<p style="color:red">Please Input all Fields</p>' ;  
}
else if(!valid_number($num)){
echo '<p style="color:red">Please input a Valid Number</p>' ;    }
else if (!valid_name($fname)){
echo '<p style="color:red">Please input a First Name!</p>' ;}
else if (!valid_name($lname)){
echo '<p style="color:red">Please input a Last Name!</p>' ;}
else
  insert_record($dbc,$num,$fname,$lname) ;

}

# Show the records
show_records($dbc);

# Close the connection
mysqli_close( $dbc ) ;
?>

    <!-- Get inputs from the user. -->
    <form action="vipresidents.php" method="POST">
        <table>
            <tr>
                <td>Number:</td>
                <td><input type="text" name="num"></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="fname"></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><input type="text" name="lname"></td>
            </tr>
        </table>
        <p><input type="submit"></p>
    </form>

    </html>
</body>

</html>
