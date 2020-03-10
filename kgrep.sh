fun(){
  COLORS=("mt='01;31'" "mt='01;32'" "mt='01;35'" "mt='01;37'")
  echo "GREP_COLORS=${COLORS[(($1))]} grep --color=always $2"
}

alias egrep="mygrep"
mygrep(){
    # define possible colors
    # COLORS=('mt=01;31' 'mt=01;32' 'mt=01;35' 'mt=01;37')
    # COUNT=2
    # NUM=1
    # as=$(fun 1 kk);
    # echo "Like this overflowed one:" $as
    # as long as the color has already been used, keep searching
    #while [ -f /home/lior/Desktop/mygrep_$NUM ]; do
        # get a random index
        #let NUM=`shuf --input-range=0-$(( ${#COLORS[*]} - 1 )) | head -1`
      #  wait ${!}
       # $(( COUNTER+=1 ))
      #  if [ "$COUNTER" -ge ${#COLORS[@]} ]; then
            # remove all color locks
     #       rm /home/lior/Desktop/mygrep_*
       #     wait ${!}
       # fi
    #done
    # mark this color as used
    #touch /home/lior/Desktop/mygrep_$NUM
    #wait ${!}

    # lets go!
    # echo "$@"
    # IFS='|' read -r -a array <<< $@"
    # echo "${array[0]}"
    # declare -a myarr=(`echo $@ |sed 's/|/ /g'`)
    # echo ${mya[@]}

    # mails=$(echo $@ | tr "/|/" " ")
    # echo ${mails[2]}
    # less_than_two=true;
    # final_command="";


    
# x=1
# while [ $x -le 4 ]
# do
#     final_command=$(fun $x $x);
#   echo "Welcome $final_command"
#   x=$(( $x + 1 ))
# done

    #!/bin/bash  
    #Example for bash split string by another string  
      
    str="$@"  
    delimiter="|"  
    s=$str$delimiter  
    array=();  
    while [[ $s ]];  
      do  
        array+=( "${s%%"$delimiter"*}" );  
        s=${s#*"$delimiter"};
        echo "a " $s "b ";  
      done;  
    declare -p array


#echo ${#array[@]}
final_command='';
less_than_two=true;
for ((idx=1; idx<=${#array[@]}; idx++));
 do
  if [ "$less_than_two" = true ] ; then
    final_command=$(fun $idx ${array[idx]});
    echo $final_command
    less_than_two=false;
    continue;
  fi

  final_command=$final_command"|"$(fun $idx ${array[idx]});




    # echo "$idx" "${array[idx]}"
    # echo "11111"
done
 echo $final_command;
 eval $final_command;
# for i in "${!array[@]}"; do
#   printf '${array[%s]}=%s\n' "$i" "${array[i]}"
#done

    # for addr in ${!array[*]}
    # do 
    #    final_command=$(fun 2 $addr);
    #    echo $final_command
    # done  


# bkpIFS="$IFS"

# #IFS=',()][' read -r  array <<<$@
# mails=$(echo $@ | tr "|" " ")
# #echo ${array[@]}    ##Or printf "%s\n" ${array[@]}

# # for (( n=0; n < ${#array[*]}; n++ ))  
# # do  
# # echo "${array[n]}"  
# # done  

# # IFS="$bkpIFS"



# 	 for addr in $mails
# 	  do
#      echo "a " $addr " b"
     
#     done
#   #   final_command=$(fun 2 $addr);
#   # # ...do something interesting...
  
#   #   # if [ "$less_than_two" = false ] ; then
      
#   #   echo "1111111 "  $final_command "$addr\n"
#     # fi
#     # if [ "$less_than_two" = true ] ; then
#     #   final_command=$(fun 1 $addr);
#     #   echo "one:" $final_command
#     #   less_than_two=false;
    # fi
    # echo $addr;
    	# GREP_COLORS='mt=01;31' grep aaa
      #$(( COUNT += 1))
      #echo "$COUNT"
      # CH='GREP_COLORS=${COLORS[((NUM++))]} grep --color=always "$addr" | GREP_COLORS=${COLORS[2]} grep --color=always "sdsds"'
      # echo "$addr";
      # eval $CH;



      #((NUM++));
      #echo $NUM;
      #$(( COUNT+=1 ))
      # $(( COUNT +=1 ))
      #echo "${COLORS[(($NUM]}"
      #GREP_COLOR='01;10' egrep '$addr'
      #GREP_COLORS='mt=01;31' egrep --color=always "$addr"
    # done
    # echo $final_command
    


	# IFS='|' # hyphen (-) is set as delimiter
	# read -ra ADDR <<< "$IN" # str is read into an array as tokens separated by IFS
	# for i in "${ADDR[@]}"; do # access each element of array
 #     	echo "$i"
	# done
	# IFS=' ' # reset to default value after usage
    
    #\GREP_COLORS="mt=${COLORS[$NUM]}" grep "$@"
}
