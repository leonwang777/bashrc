#!/bin/bash
# "[Usage] signal.sh <pid> or signal.sh <pid> <signal number>"
# ref : man signal.7
declare -A signalARR=([1]=SIGHUP [2]=SIGINT [3]=SIGQUIT [9]=SIGKILL)
sig=1
pid=""
function read_sig()
{
    echo "1. SIGHUP signal"
    echo "2. SIGINT signal"
    echo "3. SIGQUIT signal"
    echo "9. SIGKILL signal"
    echo -n "Specify the signal type to send ? "
    read sig
}

if [ $# -eq 0 ]
then
    echo "[Usage] #0 <pid> or #0 <pid> <signal number>"
    echo -n "Specify the process id ? "
    read pid
    read_sig
    elif [ $# -eq 1 ] ; then
    echo "[Usage] #0 <pid> or #0 <pid> <signal number>"
    $pid=$1
    read_sig
    elif [ $# -eq 2 ] ; then
    $pid=$1
    $sig=$2
else
    echo "[Usage] #0 <pid> or #0 <pid> <signal number>"
    exit
fi

echo "The Signal is : $sig"
echo "**** Will process $pid with sigal ${signlaARR[$sig]} ****"
case "$sig" in
    
    1)  echo "Sending SIGHUP signal"
        kill -SIGHUP $pid
    ;;
    2)  echo  "Sending SIGINT signal"
        kill -SIGINT $pid
    ;;
    3)  echo  "Sending SIGQUIT signal"
        kill -SIGQUIT $pid
    ;;
    9) echo  "Sending SIGKILL signal"
        kill -SIGKILL $pid
    ;;
    *) echo "!!! ERROR : Signal number $pid for process $sig is not processed !!!"
    ;;
esac
