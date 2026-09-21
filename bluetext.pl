#!/usr/bin/env perl

$/ = undef;
$_ = <STDIN>;

s{<span style="color:blue">(.+?)</span>}{\x1B[34m«$1»\x1B[39m}g;
s{»(\x1B\[\d*m|)(\s*)(\x1B\[\d*m|)«}{$2}g;

print $_;
