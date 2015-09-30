# DEMOCRACY IN AMERICA

SRC="src/democracy_in_america.txt"
read SEARCH

# run the search
cat < $SRC | tail -9000 | head -7500 | grep -e $SEARCH | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',."
