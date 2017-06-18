#!/bin/bash

#Grab information from webapages and save as a prettified booklike docs
#Save save file in ~/webBook.sh make executable and run sudo ./webBook.sh after cutting/pasting link and nameing file

#Cut and paste the link here. *in quotes
LINK="https://github.com/meteor-useraccounts/core/blob/master/Guide.md#boilerplates"

#Cut and paste the directory path of the file being made  *in quotes
VARPATH="/home/fleeka/Desktop/webBooks/"

#Name the file  *in quotes
FILENAME="gitMeteorUserAccounts"


function webScrape(){
	PRETTY=".ps"
	PRETTIFY=$VARPATH$FILENAME$PRETTY
	FILETYPE=".txt"
	FILENAME=$FILENAME$FILETYPE
	VARPATH=$VARPATH

#Test and print out vars with echo below
#echo "lynx -dump $LINK > $VARPATH$FILENAME&& a2ps --pro=color --pretty-print= -o $PRETTIFY $VARPATH$FILENAME"

#Run code with eval uncomment below
eval "lynx -dump $LINK > $VARPATH$FILENAME"
eval "a2ps --pro=color --pretty-print= -o $PRETTIFY $VARPATH$FILENAME"
}
				ROUTE=$(webScrape)
				echo "$ROUTE"


#Notes, wanted to link both eval lines of code with "&&" but second a2ps line was inconsistant. Wonder if it is time related.






  




 













