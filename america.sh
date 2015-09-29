# curl http://www.gutenberg.org/cache/epub/13333/pg13333.txt | cat | grep -e 'free' | cut -d ' ' -f 2-4

read -p "Do you like America? Does America like you? (y/n) " yn

case $yn in
[Yy]*) search='free';;
[Nn]*) search='slave';;
*) search='uncertain';;
esac

printf "\n\n";
printf $search | tr a-z A-Z;
printf "\n\n";

# curl http://www.gutenberg.org/cache/epub/13333/pg13333.txt | cat | tail -9000 | head -7500 | grep -e $search | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',."
curl http://www.gutenberg.org/cache/epub/13333/pg13333.txt | cat | tail -9000 | head -7500 | grep -e $search | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',."

printf "\n\n";
