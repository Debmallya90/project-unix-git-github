filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Congratulations!!!"
		echo "You finally guessed it correct!"
		echo " Folder contains ..."
		for f in $(ls)
		do
			echo "  - $f "
		done
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less number of files...try again and enter your input:"
			guess_filenum
		else
			echo "There is more number of files... try again and enter your input :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory and enter your input :"
guess_filenum
