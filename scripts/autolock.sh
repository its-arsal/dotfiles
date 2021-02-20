#!/bin/bash

print-help() {
    echo -e "Usage: autolock.sh [-t n] \n"
    echo -e "Please use: \n"
    echo -e "-t n \t Autolock after n minutes, where n should be between [1-60]"
    echo -e "\t Default value: 5"
}

if [[ -z $1 ]]; then
    n=5
elif [[ $1 == "-t" && $2 -gt 0 && $2 -le 60 ]]; then
    n=$2
else
    echo "Invalid option: $@"
    print-help
fi

start-autolock() {
    xautolock -time $n -locker lock.sh -detectsleep -secure
}

if [[ -n $n ]]; then
    pgrep -x xautolock >/dev/null && echo "autolock.sh already running..." || start-autolock
else
    print-help
fi

