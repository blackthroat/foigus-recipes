#!/bin/bash

#List of receipt names to forget
receiptsToForget=( com.woodwing.smartconnectionCC2018.payload.pkg com.woodwing.smartconnectionCC2018.sciccc2018.pkg com.woodwing.smartconnectionCC2018.scicoversetcc2018.pkg )

#Forget the receipts in the receiptsToForget array
for receiptName in "${receiptsToForget[@]}"
do
	if pkgutil --pkgs="${receiptName}" > /dev/null 2>&1
	then
		pkgutil --forget "${receiptName}" 
	else
		echo Receipt to remove "${receiptName}" NOT FOUND
	fi
done