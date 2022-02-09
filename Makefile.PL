use lib '.';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Base class and script for filter MARC records.';
author 'Michal Josef Spacek <skim@cpan.org>';
author_requires 'English' => 0;
author_requires 'File::Object' => 0.05;
author_requires 'Test::More' => 0;
author_requires 'Test::NoWarnings' => 0;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
install_script 'bin/marc-filter';
license 'bsd';
name 'App-MARC-Filter';
perl_version 5.006;
readme_from 'bin/marc-filter';
recursive_author_tests('xt');
requires 'Class::Utils' => 0;
requires 'English' => 0;
requires 'Getopt::Std' => 0;
requires 'MARC::File::XML' => 0;
requires 'Unicode::UTF8' => 0;
resources 'bugtracker' => 'https://github.com/michal-josef-spacek/App-MARC-Filter/issues',
resources 'homepage' => 'https://github.com/michal-josef-spacek/App-MARC-Filter';
resources 'repository' => 'git://github.com/michal-josef-spacek/App-MARC-Filter';
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();