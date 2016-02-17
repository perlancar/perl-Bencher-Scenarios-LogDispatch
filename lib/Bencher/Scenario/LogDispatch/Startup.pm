package Bencher::Scenario::LogDispatch::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

#our @modules = grep {!/\ALog::Dispatch::(XXX)\z/} do { require App::lcpan::Call; @{ App::lcpan::Call::call_lcpan_script(argv=>["modules", "--namespace", "Regexp::Common"])->[2] } }; # PRECOMPUTE
our @modules = qw(
    Log::Dispatch::Base
    Log::Dispatch::Dir
    Log::Dispatch::File
    Log::Dispatch::FileWriteRotate
    Log::Dispatch::Null
    Log::Dispatch::Perl
    Log::Dispatch::Screen
    Log::Dispatch::Screen::Color
);

our $scenario = {
    summary => 'Benchmark module startup overhead of some Log::Dispatch modules',

    module_startup => 1,

    participants => [
        map { +{module=>$_} } @modules,
    ],
};

1;
# ABSTRACT:
