# empty corpus file
printf "\nBuilding your corpus!\n\n"
echo "" > src/corpus.txt

read -p "Include 'Correspondence & Conversations of Alexis de Tocqueville with Nassau William Senior'? (yn) " yn1
if echo "$yn1" | grep -iq "^y" ;then
	cat src/correspondence.txt | tail -9000 | head -7500 >> src/corpus.txt;
fi

# read -p "Include 'Democracy in America' Vol 1? (yn) " yn2
# if echo "$yn2" | grep -iq "^y" ;then
# 	cat src/democracy_in_america.1.txt | tail -19190 | head -18825 >> src/corpus.txt
# fi

# read -p "Include 'Democracy in America' Vol 2? (yn) " yn3
# if echo "$yn3" | grep -iq "^y" ;then
# 	cat src/democracy_in_america.2.txt | tail -14050 | head -13600 >> src/corpus.txt
# fi

read -p "Include 'Letters from of John Keats'? (yn) " yn4
if echo "$yn4" | grep -iq "^y" ;then
	cat src/letters_of_john_keats.txt | tail -14050 | head -13600 >> src/corpus.txt
fi

read -p "Include Stein? (yn) " yn5
if echo "$yn5" | grep -iq "^y" ;then
	cat src/gertrude_stein_carl_van_vechten.txt | tail -27300 | head -13600 >> src/corpus.txt
fi


read -p "Include Wollstonecraft'? (yn) " yn6
if echo "$yn6" | grep -iq "^y" ;then
	cat src/wollstonecraft.txt | tail -5145 | head -4785 >> src/corpus.txt
fi

printf "\nDone.\n\n"