#!/bin/bash
echo -e "\t\tWelcome to Arithmetic Calculator"
echo -e "\t\t================================"
echo -e "\t\t1.Addition\n\t\t2.Sub\n\t\t3.Mul\n\t\t4.Divi\n\t\t5.Remainder"
read -p "Please select your operation from above menu with 1-5 numbers:"  user_option

echo "1 2 3 4 5" | grep -w "${user_option}" 1>/dev/null 2>/dev/null
if [ $? -ne 0 ]
then
   echo "Your option is invalid. Please re-run and provide your input with 1-5 range"
   exit
fi
which bc 1>/dev/null 2>/dev/null
if [ $? -ne 0 ]
then
  echo "Please select only integer numbers. (bc is not present on this host)"
  read -p "Enter your first number: " num1
  read -p "Enter your second number: " num2
  echo "$num1" | grep "\." 1>/dev/null 2>/dev/null
  num1_status=$?
  echo "$num2" | grep "\." 1>/dev/null 2>/dev/null
  num2_status=$?
  
  if [ $num1_status -eq 0 -o  $num2_status -eq 0 ]     
  then
     echo "you slected folat point, Please re run and provide only interge number"
     exit
  fi
  if [ $user_option -eq 1 ]
  then
     result=$((num1+num2))
     echo "The addition of given two numbers $num1 and $num2 is: $result"
  elif [ $user_option -eq 2 ]
  then
     result=$((num1-num2))
     echo "The subtraction of given two numbers $num1 and $num2 is: $result"
  elif [ $user_option -eq 3 ]
  then
      result=$((num1*num2))
      echo "The mult of given two numbers $num1 and $num2 is: $result"
  elif [ $user_option -eq 4 ]
  then
     result=$((num1/num2))
     echo "The div of given two numbers $num1 and $num2 is: $result"
  elif [ $user_option -eq 5 ]
  then
     result=$((num1%num2))
     echo "The remi of given two numbers $num1 and $num2 is: $result"
  fi   
else
  read -p "Enter your first number: " num1
  read -p "Enter your second number: " num2
   if [ $user_option -eq 1 ]
   then
     result=$(expr "$num1+$num2"|bc)
     echo "The addition of given two numbers $num1 and $num2 is: $result"
   elif [ $user_option -eq 2 ]
   then
     result=$(expr "$num1-$num2"|bc)
     echo "The subtraction of given two numbers $num1 and $num2 is: $result"
   elif [ $user_option -eq 3 ]
   then
     result=$(expr "$num1*$num2"|bc)
     echo "The mult of given two numbers $num1 and $num2 is: $result"
   elif [ $user_option -eq 4 ]
   then
      result=$(expr "$num1/$num2"|bc)
     echo "The div of given two numbers $num1 and $num2 is: $result"
   elif [ $user_option -eq 5 ]
   then
     result=$(expr "$num1%$num2"|bc)
     echo "The remi of given two numbers $num1 and $num2 is: $result"
   fi 
fi  


<< mycom

if [ $user_option -eq 1 ]
then
  read -p "Enter your first number: " num1
  read -p "Enter your second number:" num2
  result=$((num1+num2))
  echo "The addition of given two numbers $num1 and $num2 is: $result"
elif [ $user_option -eq 2 ]
then
  read -p "Enter your first number: " num1
  read -p "Enter your second number:" num2
  result=$((num1-num2))
  echo "The subtraction of given two numbers $num1 and $num2 is: $result"
elif [ $user_option -eq 3 ]
then
  read -p "Enter your first number: " num1
  read -p "Enter your second number:" num2
  result=$((num1*num2))
  echo "The mult of given two numbers $num1 and $num2 is: $result"  
elif [ $user_option -eq 4 ]
then 
  read -p "Enter your first number: " num1
  read -p "Enter your second number:" num2
  result=$((num1/num2))
  echo "The div of given two numbers $num1 and $num2 is: $result"
elif [ $user_option -eq 5 ]
then
  read -p "Enter your first number: " num1
  read -p "Enter your second number:" num2
  result=$((num1%num2))
  echo "The remi of given two numbers $num1 and $num2 is: $result"
else
  echo "Your option is invalid, Please re-run and provide your option with 1-5 range"
fi


 


mycom
