#!/bin/bash


#######################################
# Simple Survey Script
#######################################

read -p "What is your name ? " name

function thanks () {
    echo "Thank you $name for taking this survey! We will get back to you."
    exit 0
} 


function aws () {
  echo "Which AWS service do you use?"
  echo "1. EC2"
  echo "2. EBS"
  echo "3. S3"
  read -p "" answer

  thanks "$answer"

}

function azure () {
  echo "Which Azure service do you use?"
  echo "1. AKS"
  echo "2. Azure SQL"
  echo "3. Azure Virtual Machines"

  thanks "$answer"
}

function gcp () {
  echo "Which GCP service do you use?"
  echo "1. Compute Engine"
  echo "2. Cloud Storage"
  echo "3. Cloud SQL"

 thanks "$answer"
}


while true


do
  echo "Which Cloud Provider do you use ?"
  echo "1. AWS"
  echo "2. Azure"
  echo "3. GCP"
  
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

