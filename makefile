readme.md:
	touch README.md
	echo "# Some Title Here" > README.md
	echo "Date and time of makefile run: $(shell date)\n" >> README.md
	echo "Number of lines of code: $(shell cat guessinggame.sh | wc -l)\n" >> README.md	
	echo "[GitHub Page](https://nizzal.github.io/repo-name)" >> README.md	