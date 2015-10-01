# DEMOCRACY IN AMERICA

SRC="src/corpus.txt"
read SEARCH

# run the search
cat < $SRC | tail -9000 | head -7500 | grep -e $SEARCH | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',."
