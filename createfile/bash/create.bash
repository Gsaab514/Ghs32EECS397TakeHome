#!/bin/bash

myname="George Saab"
for(( i = 0; i < ${#myname}; i++ ));do
	if [[ ${myname:$i:1} == [a-zA-Z] ]]; then 
		touch ${myname:$i:1}	
	fi
done
