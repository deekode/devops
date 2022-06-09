#!/bin/bash


#######################################
#
#######################################

   name="Default"
   choice=1
   answer=1

if [ "$1" = "-y" ]; then name="Default" ; else read -p "What is your name ? " name; fi

function thanks () {
    echo "Thank you $name for taking this survey! We will get back to you."
    exit 0
} 


function aws () {
 
  printf "Which AWS service do you use? \n 1. EC2 \n 2. EBS \n 3. S3 \n"

  if [ "$1" = "-y" ]; then answer=$answer ; else read -p read -p "" answer; fi

  thanks "$answer"

}

function azure () {
printf "Which Azure service do you use? \n 1. AKS \n 2. Azure SQL \n 3. Azure Virtual Machines \n "
if [ "$1" = "-y" ]; then answer=$answer ; else read -p read -p "" answer; fi
  thanks "$answer"
}

function gcp () {

printf "Which GCP service do you use? \n 1. Compute Engine \n 2. Cloud Storage \n 3. Cloud SQL \n "
if [ "$1" = "-y" ]; then answer=$answer ; else read -p read -p "" answer; fi
thanks "$answer"
}


while true


do
  printf "Which Cloud Provider do you use ? \n 1. AWS \n 2. Azure \n 3. GCP \n "
  if [ "$1" = "-y" ]; then  choice="$choice"; else read -p "" choice; fi
  if [ "$choice" -eq 1 ]
 then 
   aws "$1"
elif [ "$choice" -eq 2 ]
then
    azure "$1"
elif [ "$choice" -eq 3 ]
then
    gcp "$1"
fi
  
done

