#!/bin/bash -x

read -p "Enter day" day
read -p "Enter month" month

if [[ "$month" == march || "$month" == april || "$month" == may || "$month" == june ]];
then

   if [[ "$month" == march && $day -ge 20 ]];
   then
      echo "true"

	elif [[ "$month" == june && $day -le 20 ]];
   then
      echo "true"

   else
      echo "false"
   fi

   if [[ "$month" == april || "$month" == may ]];
   then
      echo "true"
   fi

else
      echo "false"
fi

