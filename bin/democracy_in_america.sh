# DEMOCRACY IN AMERICA

# create a temp file for the source
# TMPFILE=`mktemp -t democracy_in_america.XXXXXX`
# TMPFILE=`mktemp -t democracy_in_america`
TMPFILE="democracy_in_america.src.txt"
read SEARCH
# OUT=''

# these are our string searches
# declare -a SEARCHES=("free" "slave" "uncertain")
# declare -a SEARCHES=("free" "slave")


# download Alexis de Tocqueville's "Democracy in America" from Project Giutenberg,
# remove front/end matter and save in a temp file
# cat democracy_in_america.src.txt | tail -9000 | head -7500 > $TMPFILE

if [ ! -f "$TMPFILE" ]; then
   # curl http://www.gutenberg.org/cache/epub/13333/pg13333.txt | tail -9000 | head -7500 > $TMPFILE
   curl http://www.gutenberg.org/cache/epub/13333/pg13333.txt > $TMPFILE
fi

# echo $TMPFILE;

# print the title to our output text file
# printf "\n\nDEMOCRACY IN AMERICA\n\n" > democracy_in_america.txt

# this will shuffle our search terms
# shuffle() {
#    local i tmp size max rand

#    # $RANDOM % (i+1) is biased because of the limited range of $RANDOM
#    # Compensate by using a range which is a multiple of the array size.
#    size=${#SEARCHES[*]}
#    max=$(( 32768 / size * size ))

#    for ((i=size-1; i>0; i--)); do
#       while (( (rand=$RANDOM) >= max )); do :; done
#       rand=$(( rand % (i+1) ))
#       tmp=${SEARCHES[i]} SEARCHES[i]=${SEARCHES[rand]} SEARCHES[rand]=$tmp
#    done
# }

# do the shuffle
# shuffle

# perform each string search and output to text file
# for search in $SEARCH
# do 
	# run the same search for each word and do some simple string manipulation
	cat < $TMPFILE | tail -9000 | head -7500 | grep -e $SEARCH | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',."
   # OUT=$OUT`cat < $TMPFILE | tail -9000 | head -7500 | grep -e $SEARCH | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',."`
	# printf "\n" >> $OUT
   # OUT=$OUT"\n"
# done

# show the contents
# cat democracy_in_america.txt
# echo $OUT