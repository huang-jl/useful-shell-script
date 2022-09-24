
# have to use process substitution instead of use read_line_error
# the above case will run in a child process which cannot modify tty_dev variable
read_line() {
    while read -r line; do
        tty_dev+=($line)
    done < <(ls /dev | grep tty)
}

read_line_error() {
    ls /dev | grep tty | while read -r line; do
        tty_dev+=($line)
    done
}

tty_dev=()
read_line
echo "tty_dev: ${tty_dev[@]}"