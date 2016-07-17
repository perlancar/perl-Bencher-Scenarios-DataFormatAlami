package Bencher::Scenario::HumanDateParsingModules::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup overhead of some human date parsing modules',
    module_startup => 1,
    participants => [
        {module=>'DateTime::Format::Alami::EN'},
        {module=>'DateTime::Format::Alami::ID'},
        {module=>'DateTime::Format::Flexible'},
        {module=>'DateTime::Format::Natural'},
        {module=>'DateTime'},
    ],
};

1;
# ABSTRACT:
