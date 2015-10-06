Txt Conversations
====================

!https://raw.githubusercontent.com/sfpc-amd/txt-conversations/master/txt-conversations-poster.jpg

Turning 19th century snailmail correspondence into poesy.

 * [Download booklet for screen (PDF)](https://github.com/sfpc-amd/txt-conversations/raw/master/txt-conversations-screen.pdf)
 * Download booklet for print (assemble using [this method](http://experimentwithnature.com/03-found/experiment-with-paper-how-to-make-a-one-page-zine/#.VhMuvBNViko
))


Script
------

This script will generate poems from the various texts authored by Alexis de Toqueville (downloaded from Project Gutenberg). It uses the following shell command to generate the poems:

```bash
cat < src/corpus.txt | grep -e $SEARCH | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',._\""
```

Which does the following:

1. Find all lines with the selected search term in them
2. Break each line into words, and take the second through the fifth word of the line
3. Lowercase all letters
4. Remove all additional punctuation  (quotes, underscores, commas, periods).

### Setup

First run the script to build your corpus.

```bash
$ ./bin/build_corpus.sh
```

You will be prompted to choose whether to include three different texts:

 * _Correspondence & Conversations of Alexis de Tocqueville with Nassau William Senior from 1834 to 1859, Volume 2_
 * _Democracy in America_ Vol 1
 * _Democracy in America_ Vol 2

(Currently the poems in the `txt` directory were generated exclusively from _Correspondence & Conversations_)

### Usage

Now run the parser script and you will be prompted for a search term:

Example using the search term "democracy":

```bash
$ ./bin/democracy_in_america.sh
democracy
lift you into aristocracy
i think that it
so irresistible a reaction
i see no symptom
rather strengthen our democracy
out which leads to
naturally not partial to
his asiatic democracy but
universal suffrage i detest
```

Or, to export to a file:

```bash
$ echo "democracy" | ./bin/democracy_in_america.sh > txt/democracy.txt
```

See more examples on the `txt` directory, each text file is named based on the corresponding string search.

