#!/bin/bash

up()
{
    CWD=$(pwd)
    DIR=$1
    if [[ -z ${DIR} ]]; then
       cd .. 
       return 0
    fi
    #From the current working directory,get the absolute
    #path of up DIR, and drop the rest.
    #So if CWD is /home/user/programs/program1/src
    #and DIR is programs then BASE will be set to 
    #/home/user/
    #Below will search backwards of CWD, the % is responsible for this
    #behavior. Looking for DIR/, once DIR/ is found everything that
    #matched * will be thrown away. Remember it is searching from the
    #end of the string.
    BASE=${CWD%*${DIR}/*}
    #cd to base via absolute path
    cd ${BASE}
    #cd to the directory
    cd ${DIR}
}
