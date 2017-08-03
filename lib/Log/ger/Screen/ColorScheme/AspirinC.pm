package Log::ger::Screen::ColorScheme::AspirinC;

# DATE
# VERSION

use strict;
use warnings;
use Color::ANSI::Util qw(ansifg);
use Log::ger::Output::Screen ();

our %colors = (
    1 => "EB7F00", # fatal
    2 => "F3FFE2", # error
    3 => "ACF0F2", # warn
    4 => "1695A3", # info
    5 => "",       # debug
    6 => "225378", # trace
);

for (keys %colors) {
    $Log::ger::Output::Screen::colors{$_} =
        $colors{$_} ? ansifg($colors{$_}) : "";
}

1;
# ABSTRACT: AspirinC color scheme

=head1 SYNOPSIS

 use Log::ger::Output 'Screen';
 use Log::ger::Screen::ColorScheme::AspirinC;
 use Log::ger;

 log_error("error");
 log_warn("warn");
