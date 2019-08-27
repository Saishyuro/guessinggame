fileCount=$(ls -1 | wc -l)

function askUser {
	echo "How many files are in the current directory?"
	read guess
}

while [[ $guess -ne $fileCount ]]
	do
		if [[ -z $guess ]]; then
			askUser
		elif [[ $guess -gt $fileCount ]]; then
			echo "Too high! Try again."
			askUser
		elif [[ $guess -lt $fileCount ]]; then
			echo "Too low! Try again."
			askUser
		fi
	done

echo "Congratulations! You correctly guessed $guess."
