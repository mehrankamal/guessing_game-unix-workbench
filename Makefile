all: create write

create:
	touch README.md

write:
	echo "# Project: Guessing Game for UNIX Workbench by John Hopkins University at [Coursera](https://www.coursera.org/)\n" >> README.md
	echo -n "Build Time: " >> README.md
	date "+%T %d %h %Y" >> README.md
	echo -n "No. of lines in 'guessinggame.sh': " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
