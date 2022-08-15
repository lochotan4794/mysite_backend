#!/bin/bash

source "$PYTHONPATH/activate" && {
    
    if [[ $EB_IS_COMMAND_LEADER == "true" ]];
    then         
        # migrate
        django-admin.py collectstatic;
    else 
        echo "this instance is NOT the leader";
    fi
    
}