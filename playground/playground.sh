
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

#Example 2 - Let me google that for you
# printf "topic?: "
# read -r answer
# url="https://lmgtfy.com/?q="
#
# open -a safari $url"$answer"
