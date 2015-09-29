# DEMOCRACY IN AMERICA

# download Alexis de Tocqueville's "Democracy in America"
# from Project Giutenberg, remove front/end matter
# and save as text file
curl http://www.gutenberg.org/cache/epub/13333/pg13333.txt | tail -9000 | head -7500 > democracy_in_america.txt

# print the title to an output text file
printf "\n\nDEMOCRACY IN AMERICA\n\n" > output.txt

# perform the same operation for each of these words
for s in "free slave uncertain"
do
	# search for the word and perform some editing / manipulation
	cat < democracy_in_america.txt | grep -i $s | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',." >> output.txt
	# add a blank line
	printf "\n" >> output.txt
done

# remove the source text
rm democracy_in_america.txt

# replace with the output text
mv output.txt democracy_in_america.txt

#show the contents
cat democracy_in_america.txt