#!/bin/bash

source "$PYTHONPATH/activate" && {
    
    if [[ $EB_IS_COMMAND_LEADER == "true" ]];
    then         
        # migrate
        python manage.py collectstatic --noinput;
    else 
        echo "this instance is NOT the leader";
    fi
    
}