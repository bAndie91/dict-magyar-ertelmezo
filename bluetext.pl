#!/usr/bin/env perl

$ANSI_CODE_REGEX = qr/\x1B\[[\d;]*m/;

$/ = undef;
$_ = <STDIN>;

s{<span style="color:blue">(\s*)(.*?)(?:(\s*)</span>)}{$1\x1B[34m«$2»\x1B[39m$3}gs;
s{($ANSI_CODE_REGEX)«(\s*)»($ANSI_CODE_REGEX)}{$2}g;
s{»($ANSI_CODE_REGEX|)(\s*)($ANSI_CODE_REGEX|)«}{$2}g;

print $_;
