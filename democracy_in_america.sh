# DEMOCRACY IN AMERICA

# create a temp file for the source
TMPFILE=`mktemp -t democracy_in_america.XXXXXX`

# these are our string searches
declare -a SEARCHES=("free" "slave" "uncertain")

# download Alexis de Tocqueville's "Democracy in America" from Project Giutenberg,
# remove front/end matter and save in a temp file
curl http://www.gutenberg.org/cache/epub/13333/pg13333.txt | tail -9000 | head -7500 > $TMPFILE

# cat democracy_in_america.src.txt | tail -9000 | head -7500 > $TMPFILE

# print the title to an output text file
printf "\n\nDEMOCRACY IN AMERICA\n\n" > democracy_in_america.txt


# perform each string search and output to text file
for search in "${SEARCHES[@]}"
do 
	# run the same search for each word and do some simple string manipulation
	cat < $TMPFILE | grep -e $search | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',." >> democracy_in_america.txt
	printf "\n" >> democracy_in_america.txt
done

# show the contents
cat democracy_in_america.txt