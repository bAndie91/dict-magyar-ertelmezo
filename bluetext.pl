#!/usr/bin/env perl

$/ = undef;
$_ = <STDIN>;

s[<span style="color:blue">(.+?)</span>][«$1»]g;
s[»(\s*)«][$1]g;

print $_;
