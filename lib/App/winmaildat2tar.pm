package App::winmaildat2tar;

use v5.14;
use warnings;
our $VERSION = "0.05";

package App::winmaildat2tar::Archive {
    use v5.14;
    use warnings;
    sub new {
	my $class = shift;
	my $format = shift;
	$format =~ s/^([a-z])([a-z]*)$/\u$1\L$2/i
	    or die "$format: format error";
	my $subclass = "$class::$format";
	my $obj = bless { format => $format }, $subclass;
	$obj->{archive} = $obj->newarchive;
	$obj;
    }
    sub newarchive {
	shift->module->new;
    }
    sub module {
	sprintf "Archive::%s", shift->{format};
    }
    sub write {
	shift->{archive}->write;
    }
}

package App::winmaildat2tar::Archive::Tar {
    use v5.14;
    use warnings;
    use Archive::Tar;
    our @ISA = qw(App::winmaildat2tar::Archive);
    sub add {
	my $obj = shift;
	my($name, $data) = @_;
	$obj->{archive}->add_data($name, $data,
		       { uname => 'nobody', gname => 'nogroup' });
    }
}

package App::winmaildat2tar::Archive::Ar {
    use v5.14;
    use warnings;
    use Archive::Ar;
    our @ISA = qw(App::winmaildat2tar::Archive);
    sub add {
	my $obj = shift;
	my($name, $data) = @_;
	$obj->{archive}->add_data($name, $data);
    }
}

package App::winmaildat2tar::Archive::Zip {
    use v5.14;
    use warnings;
    use Archive::Zip;
    our @ISA = qw(App::winmaildat2tar::Archive);
    sub add {
	my $obj = shift;
	my($name, $data) = @_;
	$obj->{archive}->addString($data, $name);
    }
    sub write {
	my $obj = shift;
	open my $fh, ">", \(my $data) or die;
	$obj->{archive}->writeToFileHandle($fh);
	close $fh;
	$data;
    }
}

1;

__END__

=encoding utf-8

=head1 NAME

winmaildat2tar - Convert winmail.dat (TNEF data) to tentative archive

=head1 SYNOPSIS

    winmaildat2tar file

=head1 DESCRIPTION

Document is inlcuded in executable script.

=head1 AUTHOR

Kazumasa Utashiro

=head1 LICENSE

Copyright 2020 Kazumasa Utashiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

