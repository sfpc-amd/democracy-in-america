# DEMOCRACY IN AMERICA
read SEARCH

# run the search
cat < src/corpus.txt | grep -e $SEARCH | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',._\""
