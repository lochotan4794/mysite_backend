#!/bin/bash

source "$PYTHONPATH/activate" && {
    
    if [[ $EB_IS_COMMAND_LEADER == "true" ]];
    then 
        # migrate
        python manage.py makemigrations;
    else 
        echo "this instance is NOT the leader";
    fi
    
}