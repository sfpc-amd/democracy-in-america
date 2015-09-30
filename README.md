Democracy in America
====================

This script will generate poems from the text of Alexis de Tocqueville's [_Democracy in America_](https://en.wikipedia.org/wiki/Democracy_in_America) (downloaded from Project Gutenberg). You will be prompted for a search term, which will be used to generate the poem.

Example:

```bash
$ ./bin/democracy_in_america.sh
property
mars and luynes were
open profession; that as
is little value now
```

Or, to export to a file:

```bash
$ echo "property" | ./bin/democracy_in_america.sh > txt/property.txt
```
