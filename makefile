README.md:
	touch README.md
	echo "## Project Guessing Game\n" > README.md
	echo -n "Date and time make was run: **" >> README.md ; date +%D" "%T >> README.md
	truncate -s -1 README.md && echo "**\n" >> README.md
	echo -n "Lines of code in guessinggame.sh: **" >> README.md ;
	egrep -v "^$$" guessinggame.sh | wc -l >> README.md
	truncate -s -1 README.md && echo "**" >> README.md
