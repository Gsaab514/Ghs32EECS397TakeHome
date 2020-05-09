<?php

$myname = "George Saab";
for($i = 0; $i < strlen($myname); $i = $i + 1){
	if($myname[$i] != " "){
		$fname = $myname[$i];
		$outfile = fopen($fname, "w")or die("Unable to open file!");
		fclose($outfile);
	}
}
?>
