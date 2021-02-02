[![Build Status](https://travis-ci.com/kaz-utashiro/winmaildat2tar.svg?branch=master)](https://travis-ci.com/kaz-utashiro/winmaildat2tar)
# NAME

winmaildat2tar - Convert winmail.dat (TNEF data) to tentative archive

# VERSION

Version 0.08

# SYNOPSIS

$ winmaildat2tar winmail.dat > winmail.tar

# DESCRIPTION

This command read `winmail.dat` file in TNEF format and produce
another tentative archive formatted data (tar by default).

- **--format** _format_, **-f** ...

    Specify archive format from **tar**, **ar** or **zip**.
    Default is **tar**.

# INSTALL

## CPANMINUS

To get the latest code, use this:

    cpanm https://github.com/kaz-utashiro/winmaildat2tar.git

or

    curl -sL http://cpanmin.us | perl - https://github.com/kaz-utashiro/winmaildat2tar.git

# SEE ALSO

[https://github.com/kaz-utashiro/winmaildat2tar](https://github.com/kaz-utashiro/winmaildat2tar)

# AUTHOR

Kazumasa Utashiro

# LICENSE

Copyright 2020 Kazumasa Utashiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
