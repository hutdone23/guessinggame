README.md:
	touch README.md
	echo "guessinggame" > README.md
	echo
	echo
	date >> README.md
	echo "Number of Lines:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
