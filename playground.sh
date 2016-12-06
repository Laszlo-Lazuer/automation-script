
#Example 1 - Exercise in Bash functions

#!/bin/bash
                function quit {
                   exit
                }
                function e {
                    echo $1
                }
                e Hello
                e World
                e Again
                quit
                echo foo

#Example 2
###etc....
