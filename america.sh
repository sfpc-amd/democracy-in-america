# DEMOCRACY IN AMERICA

# download Alexis de Tocqueville's "Democracy in America"
# from Project Giutenberg, remove front/end matter
# and save as text file
curl http://www.gutenberg.org/cache/epub/13333/pg13333.txt | tail -9000 | head -7500 > democracy_in_america.txt

# print the title to an output text file
printf "\n\nDEMOCRACY IN AMERICA\n\n" > output.txt

# search the text file for the word "slave" and run some simple transformations
cat < democracy_in_america.txt | grep -e 'free' | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',." >> output.txt

# new line
printf "\n" >> output.txt

cat < democracy_in_america.txt | grep -e 'slave' | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',." >> output.txt


printf "\n" >> output.txt

cat < democracy_in_america.txt | grep -e 'uncertain' | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',." >> output.txt

printf "\n" >> output.txt


rm democracy_in_america.txt
mv output.txt democracy_in_america.txt
cat democracy_in_america.txt