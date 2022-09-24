mean() {
    local arr=("$@")
    local sum=0
    for ele in ${arr[@]}; do
            sum=$(echo "$sum + $ele" | bc)
    done
    echo "$sum / ${#arr[@]}" | bc -l
}

arr=(1 3.32 4.90 4.2 12.39 232 99.2 100)
res=$(mean ${arr[@]})
echo "result is $res"