<?php

$fname = fopen("Data.txt","r") or die("Unable to open write file!");
$l1 = '<form action="index.cgi" method="post">';
$l2 = '<ul>';
$l3 = '    <li name="' ;
$l31= '" value="text">input1</li>';
$l4 = '    <li name="';
$l41= '" value="text">input2</li>';
$l5 = '    </ul>';
$l6 = '  <input type="submit" value="Submit" >';
$l7 = '</form>';

$output = fopen("output.html","w") or die("Unable to open write file!");
fwrite($output,$l1); fwrite($output,"\n"); 
fwrite($output,$l2); fwrite($output,"\n"); 
fwrite($output,$l3); 
$readn = fgets($fname);
for( $i=0 ; $i < strlen($readn);$i = $i + 1){
	if( $readn[$i] == '=' ){
		$i=$i+1; fwrite($output,$readn[$i]);
		$i=$i+1; fwrite($output,$readn[$i]);
		$i=$i+1; fwrite($output,$readn[$i]);
		break;
	}
}
fwrite($output,$l31); fwrite($output,"\n"); 
fwrite($output,$l4); 
for( ; $i < strlen($readn);$i = $i + 1){
	if( $readn[$i] == '=' ){
		$i=$i+1; fwrite($output,$readn[$i]);
		$i=$i+1; fwrite($output,$readn[$i]);
		$i=$i+1; fwrite($output,$readn[$i]);
		break;
	}
}
fwrite($output,$l41); fwrite($output,"\n"); 
fwrite($output,$l5); fwrite($output,"\n"); 
fwrite($output,$l6); fwrite($output,"\n"); 
fwrite($output,$l7); fwrite($output,"\n"); 
fclose($fname);
fclose($output);
?>

