#!/bin/bash


#######################################
#
#######################################

read -p "What is your name ? " name

function thanks () {
    echo "Thank you $name for taking this survey! We will get back to you."
    exit 0
} 


function aws () {
  printf "Which AWS service do you use? \n 1. EC2 \n 2. EBS \n 3. S3 \n "
  read -p "" answer
  thanks "$answer"

}

function azure () {
 printf "Which Azure service do you use? \n 1. AKS \n 2. Azure SQL \n 3. Azure Virtual Machines \n "
read -p "" answer
  thanks "$answer"
}

function gcp () {
printf "Which GCP service do you use? \n 1. Compute Engine \n 2. Cloud Storage \n 3. Cloud SQL \n "
read -p "" answer
thanks "$answer"
}


while true


do
  printf "Which Cloud Provider do you use ? \n 1. AWS \n 2. Azure \n 3. GCP \n "
  read -p "" choice
  if [ "$choice" -eq 1 ]
 then 
   aws
elif [ "$choice" -eq 2 ]
then
    azure
elif [ "$choice" -eq 3 ]
then
    gcp
fi
  
done

