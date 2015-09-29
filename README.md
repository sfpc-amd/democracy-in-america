Democracy in America
====================

This bash poem (?) will download the entire text source of Alexis de Tocqueville's [_Democracy in America_](https://en.wikipedia.org/wiki/Democracy_in_America) from Project Gutenberg and use some simple string searches to compose a poem from its contents.

You can run the script by pasting the following into your terminal:

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/sfpc-amd/democracy-in-america/master/democracy_in_america.sh)"

Or view the source above to see what's going on.

**Note:** Project Gutenberg applies a limit to the number of books you are able to download in a single day. If you run this script multiple times you may be locked out for 24 hours.
