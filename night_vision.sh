if [ "$1" = "r" ];then
    killall redshift
    xcalib -green .1 0 1 -alter
    xcalib -blue .1 0 1 -alter
elif [ -z "$1" ]; then
    xcalib -clear
    redshift -l 39:117 -t 5700:4800 -o
fi


