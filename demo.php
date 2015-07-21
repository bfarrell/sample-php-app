<?php
$serverName = "localhost"; //serverName\instanceName
$connectionInfo = array( "Database"=>"demoDb", "UID"=>"rlmuser", "PWD"=>"rlmuser");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

$results = sqlsrv_query( $conn, "SELECT * from colors" );

echo "<H1>Brendan's Crappy Demo App</H1>";
echo '<table style="border:1px solid black;">'; 
echo '<tr><th style="border:1px solid black;">ID</th>';
echo '<th style="border:1px solid black;">Color</th>';
echo '</tr>'; 

while($row = sqlsrv_fetch_array($results))
{
  echo '<tr><td style="border:1px solid black;">';
  echo $row['id']; 
  echo '</td><td style="border:1px solid black;">';  
  echo $row['color']; 
  echo "</td></tr>";
}
echo "</table>";    
?>