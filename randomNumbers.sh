#!/bin/bash
#This scripts create unique  numbers to 0-10
#Cenk Durak March 2022

#Define list for seperate unique numbers
list=()
count=0

#Separete  random  number for unique with while loop
 while  [[ $count -le 10 ]]
  do
    #create rondom number 0-10
    randomNumber=$[RANDOM%11]
   #if created number in list  raise counter for create another unique number
    if [[ " ${list[@]} " =~ " ${randomNumber} " ]]; then

        count=$(( $count +1 ))

    fi
    #if created number  is not member of array , add this number  to array
    if [[ ! " ${list[@]} " =~ " ${randomNumber} " ]]; then

        list+=($randomNumber)
    fi
 done

#Print  the created numbers
  for  i in  ${list[@]}
   do
        echo 'CreatedNumber:'$i
   done
