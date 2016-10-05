.txt conversations
====================

**Note:** This project is no longer maintained here. Head over to https://github.com/andyinabox/txt

Turning 19th century snailmail correspondence into poems.

[Look here](http://experimentwithnature.com/03-found/experiment-with-paper-how-to-make-a-one-page-zine/#.VhMuvBNViko) for assembly instructions.


Editions
========

 1. [De Tocqueville & Nassau](#de-tocqueville--nassau)
 2. [John Keats](#john-keats)
 3. [Mary Wollstonecraft](#mary-wollstonecraft)

De Tocqueville & Nassau
------------------------------

![Poster image](booklet/de_tocqueville_nassau/de_tocqueville-poster.jpg)

[Screen PDF](https://github.com/sfpc-amd/txt-conversations/raw/master/booklet/de_tocqueville_nassau/de_tocqueville-booklet-screen.pdf) / [Print PDF](https://github.com/sfpc-amd/txt-conversations/raw/master/booklet/de_tocqueville_nassau/de_tocqueville-booklet-print.pdf) / [Source](http://www.gutenberg.org/ebooks/13333)

John Keats
------------------------------

![Poster image](booklet/keats/keats-poster.jpg)

[Screen PDF](https://github.com/sfpc-amd/txt-conversations/raw/master/booklet/keats/keats-booklet-screen.pdf) / [Print PDF](https://github.com/sfpc-amd/txt-conversations/raw/master/booklet/keats/keats-booklet-print.pdf) / [Source](http://www.gutenberg.org/ebooks/35698)

Mary Wollstonecraft
------------------------------

![Poster image](booklet/wollstonecraft/wollstonecraft-poster.jpg)

[Screen PDF](https://github.com/sfpc-amd/txt-conversations/raw/master/booklet/wollstonecraft/wollstonecraft-booklet-screen.pdf) / [Print PDF](https://github.com/sfpc-amd/txt-conversations/raw/master/booklet/wollstonecraft/wollstonecraft-booklet-print.pdf) / [Source](http://www.gutenberg.org/ebooks/3529)


Instructions
===============================

The script
----------

This whole project is based on a single line. This command will generate poems from whatever text is contained in `corpus.txt`, using `$SEARCH` as the query:

```bash
cat < corpus.txt | grep -e $SEARCH | cut -d ' ' -f 2-5 | tr A-Z a-z | tr -d "',._\""
```


Setup
------

First run the script to build your corpus.

```bash
$ ./bin/build_corpus.sh
```

You will be prompted to choose whether to include any of the available texts.

Usage
-----

Now run the parser script and you will be prompted for a search term. Example using the search term "democracy" on the De Tocqueville text:

```bash
$ ./bin/generator.sh
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
$ echo "democracy" | ./bin/generator.sh > txt/democracy.txt
```

See more examples on the `txt` directory, each text file is named based on the corresponding string search.

