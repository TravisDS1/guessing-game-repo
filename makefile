README.md:
	touch README.md
	echo "##Guessing Game Project" > README.md
	echo -n "Date and time make was run: **" >> README.md ; date +%D" "%T"**" >> README.md
	echo -n "Lines of code in guessinggame.sh: **" >> README.md ;
	egrep -v "^$$" guessinggame.sh | wc -l >> README.md
	echo "**" >> README.md
