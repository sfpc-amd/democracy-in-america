Democracy in America
====================

This script will generate poems from the text of Alexis de Tocqueville's [_Democracy in America_](https://en.wikipedia.org/wiki/Democracy_in_America) (downloaded from Project Gutenberg). You will be prompted for a search term, which will be used to generate the poem.

Example:

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