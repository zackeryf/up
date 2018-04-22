# up

NAME
    
    up - Change the shell working directory to a directory in the current working directory context.

SYNOPSIS
    
    up [dir]

DESCRIPTION
    
    Within the context of the current working directory path change the shell working directory
    to the first directory name that matches [dir]. The default action if [dir] is not set is
    to change the shell working directory up one directory.
    
INSTALLATION

    Copy and rename up.sh to /usr/bin/up and add a entry to your .bashrc to source the file.
    
TESTED SHELLS

    Bash
