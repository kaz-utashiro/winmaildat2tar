[![Build Status](https://travis-ci.com/kaz-utashiro/winmaildat2xar.svg?branch=master)](https://travis-ci.com/kaz-utashiro/winmaildat2xar)
# NAME

winmaildat2xar - Convert winmail.dat (TNEF data) to another archive

# VERSION

Version 0.04

# SYNOPSIS

$ winmaildat2xar winmail.dat | tar tvf -

# DESCRIPTION

This command read `winmail.dat` file in TNEF format and produce
another archive formatted data.  Only tar format is supported
currently.

# INSTALL

## CPANMINUS

To get the latest code, use this:

    $ cpanm https://github.com/kaz-utashiro/winmaildat2xar.git

# SEE ALSO

[https://github.com/kaz-utashiro/winmaildat2xar](https://github.com/kaz-utashiro/winmaildat2xar)

# AUTHOR

Kazumasa Utashiro

# LICENSE

Copyright 2020 Kazumasa Utashiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
