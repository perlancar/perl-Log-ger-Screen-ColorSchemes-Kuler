package Log::ger::Screen::ColorScheme::AspirinC;

# DATE
# VERSION

use strict;
use warnings;
use Color::ANSI::Util qw(ansifg);
use Log::ger::Output::Screen ();

our %colors = (
    10 => "EB7F00", # fatal
    20 => "F3FFE2", # error
    30 => "ACF0F2", # warn
    40 => "1695A3", # info
    50 => "",       # debug
    60 => "225378", # trace
);

for (keys %colors) {
    $Log::ger::Output::Screen::colors{$_} =
        $colors{$_} ? ansifg($colors{$_}) : "";
}

1;
# ABSTRACT: AspirinC color scheme

=head1 SYNOPSIS

Via Perl code:

 use Log::ger::Output 'Screen';
 use Log::ger::Screen::ColorScheme::AspirinC;
 use Log::ger;

 log_error("error");
 log_warn("warn");

Via command-line:

 % PERL5OPT=-MLog::ger::Screen::ColorScheme::AspirinC yourscript.pl ...

Screenshot:

# IMAGE: share/images/aspirinc.png
