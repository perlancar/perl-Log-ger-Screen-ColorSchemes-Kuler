package Log::ger::Screen::ColorScheme::Unlike;

# DATE
# VERSION

use strict;
use warnings;
use Color::ANSI::Util qw(ansifg);
use Log::ger::Output::Screen ();

our %colors = (
    1 => "ED8C2B", # fatal
    2 => "CF4A30", # error
    3 => "911146", # warn
    4 => "35203B", # info
    5 => "",       # debug
    6 => "88A825", # trace
);

for (keys %colors) {
    $Log::ger::Output::Screen::colors{$_} =
        $colors{$_} ? ansifg($colors{$_}) : "";
}

1;
# ABSTRACT: Unlike color scheme

=head1 SYNOPSIS

 use Log::ger::Output 'Screen';
 use Log::ger::Screen::ColorScheme::Unlike;
 use Log::ger;

 log_error("error");
 log_warn("warn");
