#!/bin/bash
display_options() {
  echo "Select your options between 1-5"
  echo "Addition --> 1"
  echo "Subraction --> 2"
  echo "Mutliplication --> 3 "
  echo "Division   --> 4"
  echo "Reminder  --> 5"
}
welcome() {
  echo "Welcome to Arithemetic calcluator"
}
read_option() {
  read -p "Enter your option: " option
}
read_numbers() {
  read -p "Enter fist number: "   num1
  read -p "Enter second number: " num2
}
find_result() {
  if [ ${option} -eq 1 ]
  then
     result=$((num1+num2))
     display_result
  elif [ ${option} -eq 2 ]
  then
     result=$((num1+num2))
  fi
}
display_result() {
  echo "The result for $option is: $result"
}

welcome
display_options
read_option
read_numbers
echo "Finding result........"
find_result
























