<?php 

	$fname = fopen("data.csv","r") or die("Unable to open write file!");
	$output = fopen("urlname.csv","w") or die("Unable to open write file!");
	$j=0;
        while( !feof($fname) ){
		$field = 0;
              	$readn = fgets($fname);
		for( $i = 0; $i < strlen($readn); $i = $i + 1){
			if($readn[$i] != ","){
				if( $j != 0 ){
			       		if($readn[$i] != '"')
						fwrite($output,$readn[$i]);	
				}else
					fwrite($output,$readn[$i]);
			}
			if($readn[$i] == ","){
				$field = $field + 1;
				if($field <= 11){
					fwrite($output,"\t");
				}
				else
					fwrite($output,"\n");
			}	
		}
		$j=$j+1;
        }
        fclose($fname);
	fclose($output);
?> 
