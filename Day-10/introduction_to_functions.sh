#!/bin/bash
function readnumbers {
  read -p "Enter first number: " num1
  read -p "Enter second number: " num2
}

dire() {
 echo "The result is: ${result}"

}
echo "Welcome to  Addtion and subtraction calculator"
echo "Addtion: Press-1"
echo "Sub:     Press-2"


read -p "Enter you selection" oper

if [ ${oper} -eq 1 ]
then
  readnumbers
  #sum=$((num1+num2))
  result=$((num1+num2))
  dire
  #echo "The result is: ${sum}"
elif [ ${oper} -eq 2 ]
then
  readnumbers
  #sub=$((num1-num2))
  result=$((num1-num2))
  dire
  #echo "The result is: ${sub}"
else
  echo "Invalid option"
fi







