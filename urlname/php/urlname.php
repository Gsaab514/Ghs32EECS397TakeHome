<?php 

	$fname = fopen("data.csv","r") or die("Unable to open write file!");
	$output = fopen("urlname.csv","w") or die("Unable to open write file!");
        while( !feof($fname) ){
		$field = 0;
              	$readn = fgets($fname);
		for( $i = 0; $i < strlen($readn); $i = $i + 1){
			if($field == 1 || $field == 2){
				if($readn[$i] != "," && $readn[$i] != '"'){
					fwrite($output,$readn[$i]);	
				}
			}
			if($readn[$i] == ","){
				$field = $field + 1;
				if($field == 2){
					fwrite($output,"\t");
				}
				if($field == 3)
					fwrite($output,"\n");
			}	
		}
        }
        fclose($fname);
	fclose($output);
?> 
