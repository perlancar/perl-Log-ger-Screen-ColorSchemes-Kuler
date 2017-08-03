package Log::ger::Screen::ColorScheme::Unlike;

# DATE
# VERSION

use strict;
use warnings;
use Color::ANSI::Util qw(ansifg);
use Log::ger::Output::Screen ();

our %colors = (
    10 => "ED8C2B", # fatal
    20 => "CF4A30", # error
    30 => "911146", # warn
    40 => "35203B", # info
    50 => "",       # debug
    60 => "88A825", # trace
);

for (keys %colors) {
    $Log::ger::Output::Screen::colors{$_} =
        $colors{$_} ? ansifg($colors{$_}) : "";
}

1;
# ABSTRACT: Unlike color scheme

=head1 SYNOPSIS

Via Perl code:

 use Log::ger::Output 'Screen';
 use Log::ger::Screen::ColorScheme::Unlike;
 use Log::ger;

 log_error("error");
 log_warn("warn");

Via command-line:

 % PERL5OPT=-MLog::ger::Screen::ColorScheme::Unlike yourscript.pl ...

Screenshot:

# IMAGE: share/images/unlike.png
