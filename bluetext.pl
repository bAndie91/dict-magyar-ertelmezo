#!/usr/bin/env perl

$/ = undef;
$_ = <STDIN>;

s{<span style="color:blue">(\s*)(.*?)(?:(\s*)</span>)}{$1\x1B[34m«$2»\x1B[39m$3}gs;
s{(\x1B\[\d*m)«(\s*)»(\x1B\[\d*m)}{}g;
s{»(\x1B\[\d*m|)(\s*)(\x1B\[\d*m|)«}{$2}g;

print $_;
