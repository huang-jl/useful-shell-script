not_found_command | echo
echo "res is $?"

# by default, shell pipe will hide intermediate command's return code
# when we set -o pipefail, any non-zero intermediate return value will reflect in final return value
set -o pipefail
not_found_command | echo
echo "res is $?"

not_found_command
echo "still running"
# when set -e, the script will exit whenever a command returns non-zero
set -e
not_found_command
echo "you should not see this"