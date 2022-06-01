#!/bin/bash

while [ -n "$1" ]; do
case "$1" in
-w) word=$2 ;;
-f) folder=$2 ;;
-m) mode=$2 ;;
esac; shift; done

function main {
    if [[ "$3" == "titles" ]]
    then titles "$1" "$2"
    else content "$1" "$2"
    fi
}

function titles {
    declare -a  arr_titles
    recursive1 "$2"
    count1=0
    for i in "${arr_titles[@]}"
    do
    word=$( echo "$1" | awk '{print tolower($0)}' )
    j=$( echo "$i" | awk '{print tolower($0)}' )
        if [[ "$j" =~ "$word" ]]
        then count1=$(( $count1 + 1 ))
        fi
    done
    echo $count1
}

function recursive1 {
    cd "$1"
    for i in *
    do
        if [ -d "$i" ] 
        then arr_titles+=("$i")
        recursive1 "$i"
        else arr_titles+=("$i")
        fi
    done
    cd ..
}

function content {
    declare -a arr_files
    recursive2 "$2"
    count2=0
    for i in "${arr_files[@]}"
    do
    cou=`grep -o -i "$1" "$i" | wc -l`
    count2=$(( $count2 + $cou ))
    done
    echo $count2
}

function recursive2 {
    cd "$1"
    for i in *
    do
        if [ -d "$i" ] 
        then recursive2 "$i"
        elif [ -f "$i" ] 
        then f=`readlink -m "$i"`
        arr_files+=("$f")
        fi
    done
    cd ..
}

main "$word" "$folder" "$mode"
