use strict;
use warnings;

use App::MARC::Filter;
use English;
use File::Object;
use File::Spec::Functions qw(abs2rel);
use Test::More 'tests' => 2;
use Test::NoWarnings;
use Test::Output;

my $script = abs2rel(File::Object->new->file('04-run.t')->s);
# XXX Hack for missing abs2rel on Windows.
if ($OSNAME eq 'MSWin32') {
	$script =~ s/\\/\//msg;
}

# Test.
@ARGV = (
	'-h',
);
my $right_ret = <<"END";
Usage: $script [-h] [-o format] [-r] [--version] marc_xml_file field subfield value
	-h		Print help.
	-o format	Output MARC format. Possible formats are ascii, xml.
	-r		Use value as Perl regexp.
	--version	Print version.
	marc_xml_file	MARC XML file.
	field		MARC field.
	subfield	MARC subfield.
	value		MARC field/subfield value to filter.
END
stderr_is(
	sub {
		App::MARC::Filter->new->run;
		return;
	},
	$right_ret,
	'Run help.',
);
