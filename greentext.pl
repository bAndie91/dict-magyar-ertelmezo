#!/usr/bin/env perl

$/ = undef;
$_ = <STDIN>;

s{<span style=[""]color:green.*?>(.+?)</span>}{\x1B[32m$1\x1B[39m}gs;

print $_;
