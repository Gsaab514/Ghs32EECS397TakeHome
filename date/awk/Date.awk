BEGIN { 
dates = "date.bash"
print "#!/bin/bash" > dates
print "NOW=$( date '+%F_%H:%M:%S' )" > dates
print "echo $NOW" > dates
system("bash ./date.bash");
}
