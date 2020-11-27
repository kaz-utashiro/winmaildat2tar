requires 'Archive::Tar';
requires 'Convert::TNEF';
requires 'perl', 'v5.14.0';

on configure => sub {
    requires 'Module::Build::Tiny', '0.035';
};

on test => sub {
    requires 'Test::More', '0.98';
};
