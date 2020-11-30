[![Build Status](https://travis-ci.com/kaz-utashiro/winmaildat2tar.svg?branch=master)](https://travis-ci.com/kaz-utashiro/winmaildat2tar)
# NAME

winmaildat2tar - Convert winmail.dat (TNEF data) to tentative archive

# VERSION

Version 0.05

# SYNOPSIS

$ winmaildat2tar \[--format format\] winmail.dat | tar tvf -

# DESCRIPTION

This command read `winmail.dat` file in TNEF format and produce
another tentative archive formatted data.  Defaut format is Tar.

- **--format** _format_

    Specify archive format from **Tar**, **Ar** or **Zip**.
    Default is **Tar**.

# INSTALL

## CPANMINUS

To get the latest code, use this:

    $ cpanm https://github.com/kaz-utashiro/winmaildat2tar.git

# SEE ALSO

[https://github.com/kaz-utashiro/winmaildat2tar](https://github.com/kaz-utashiro/winmaildat2tar)

# AUTHOR

Kazumasa Utashiro

# LICENSE

Copyright 2020 Kazumasa Utashiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
