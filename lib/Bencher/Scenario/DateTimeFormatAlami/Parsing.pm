package Bencher::Scenario::DateTimeFormatAlami::Parsing;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark parsing speed of DateTime::Format::Alami against some other modules',
    modules => {
        'DateTime::Format::Alami::EN' => {version => 0.11},
        'DateTime::Format::Alami::ID' => {version => 0.11},
    },
    participants => [
        {
            module=>'DateTime::Format::Alami::EN',
            code_template => 'state $parser = DateTime::Format::Alami::EN->new; $parser->parse_datetime(<text>)',
            tags => ['lang:en'],
        },
        {
            module=>'DateTime::Format::Alami::ID',
            code_template => 'state $parser = DateTime::Format::Alami::ID->new; $parser->parse_datetime(<text>)',
            tags => ['lang:id'],
        },
        {
            module=>'Date::Extract',
            code_template => 'state $parser = Date::Extract->new; $parser->extract(<text>)',
            tags => ['lang:en'],
        },
        {
            module=>'DateTime::Format::Natural',
            code_template => 'state $parser = DateTime::Format::Natural->new; $parser->parse_datetime(<text>)',
            tags => ['lang:en'],
        },
        {
            module=>'DateTime::Format::Flexible',
            code_template => 'DateTime::Format::Flexible->parse_datetime(<text>)',
            tags => ['lang:en'],
        },
    ],
    datasets => [
        {args => {text => '18 feb'}},
        {args => {text => '18 feb 2011'}},
        {args => {text => 'today'}, include_participant_tags => ['lang:en']},
        {args => {text => 'hari ini'}, include_participant_tags => ['lang:id']},
    ],
};

1;
# ABSTRACT:
