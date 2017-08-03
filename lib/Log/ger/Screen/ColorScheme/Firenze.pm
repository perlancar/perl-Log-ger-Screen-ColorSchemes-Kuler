package Log::ger::Screen::ColorScheme::Firenze;

# DATE
# VERSION

use strict;
use warnings;
use Color::ANSI::Util qw(ansifg);
use Log::ger::Output::Screen ();

our %colors = (
    1 => "8E2800", # fatal
    2 => "B64926", # error
    3 => "FFB03B", # warn
    4 => "FFF0A5", # info
    5 => "",       # debug
    6 => "468966", # trace
);

for (keys %colors) {
    $Log::ger::Output::Screen::colors{$_} =
        $colors{$_} ? ansifg($colors{$_}) : "";
}

1;
# ABSTRACT: Firenze color scheme

=head1 SYNOPSIS

Via Perl code:

 use Log::ger::Output 'Screen';
 use Log::ger::Screen::ColorScheme::Firenze;
 use Log::ger;

 log_error("error");
 log_warn("warn");

Via command-line:

 % PERL5OPT=-MLog::ger::Screen::ColorScheme::Firenze yourscript.pl ...

Screenshot:

# IMAGE: share/images/firenze.png
