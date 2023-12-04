#!/bin/bash

#key here is the first argument and we should trim white spaces 

KEY=$(echo "$1" | tr -d '[:space:]')


#value is get from searching the file using the key
 
VALUE=$(grep -E "^$KEY=" "config.ini"| cut -d '=' -f 2)



#here we check if the value is empty ,then say it is error, else print the value

if [ -n "$VALUE" ]; then
    echo "$KEY = $VALUE"
else
    echo "Error: Key '$KEY' not present in the configuration file."
fi


#note : here i put the config.ini in the same directory of config_parser.sh
