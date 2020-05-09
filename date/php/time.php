<?php
$awkf = "BEGIN { format = \"%a %b %e %H:%M:%S %Z %Y\"; print strftime(format); }";
$ofile = fopen("time.awk","w") or die("Unable to open file!");
fwrite($ofile,$awkf);
fclose($ofile);
system('awk -f time.awk > outfile; cat outfile');

?>


