all: README.md

README.md:
  echo "# guessinggame.sh for Coursera\n" > README.md
  echo -n "- Date: " >> README.md
  date >> README.md
  echo -n " - Lines: " >> README.md
  wc -l < guessinggame.sh >> README.md
