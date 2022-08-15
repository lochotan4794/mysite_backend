#!/bin/bash

source "$PYTHONPATH/activate" && {
    
    if [[ $EB_IS_COMMAND_LEADER == "true" ]];
    then 
        # migrate
        django-admin.py createsu;
    else 
        echo "this instance is NOT the leader";
    fi
    
}