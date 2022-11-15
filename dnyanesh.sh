while [ True ]
do 
	echo "##########################################################################"
	echo -e "Choose one of the Following \n1. Create a New Address Book\n2.View Record\n3. Insert new record\n4.Delete a record\n5. modify a record \n6.Exit"
	echo "##########################################################################"
	read opt
	case $opt in

	1)
	echo "Enter Filename"
	read Filename
	if [ $Filename ] ; then 
		rm $Filename
	fi
	cont=1
	echo -e "NAME\tNUMBER\t\t ADDRESS\n===================================\n" | cat >> $Filename
	while [ "$cont" -gt 0 ]
	do
	echo "Enter Name"
	read name
	echo "Enter phone number of $name"
	read number
	echo "Enter Address of $name"
	read address
	echo -e "$name\t$number\t\t$address\n" | cat >> $Filename
	echo "Enter 0 To stop, 1 to enter Next"
	read cont
	done
	;;
 	2)
	cat $Filename
	;;
	3)
	printf "\nEnter Name:"
	read name
	printf "Enter phone number of $name"
	read number
	printf "Enter Address of $name"
	read address
	printf "$name\t$number\t\t$address\n" |cat >> $Filename
	;;
	4)
	echo -e "Delete record\nEnter Name\nPhone Number"
	read pattern
	temp="temp"
	grep -v $pattern $Filename | cat >> $temp
	rm $Filename
	cat $temp | cat >> $Filename
	rm $temp
	;;
	esac
done 
