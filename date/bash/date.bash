#!/bin/bash

printf "<?php\necho date(DATE_RFC2822); \n ?>" > t.php
php ./t.php
