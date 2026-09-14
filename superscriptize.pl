#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';

$GREEK_DASIA = '῾';
%tr = (qw/0 ⁰ 1 ¹ 2 ² 3 ³ 4 ⁴ 5 ⁵ 6 ⁶ 7 ⁷ 8 ⁸ 9 ⁹/, 'c', ' ͨ', 'h', ' ͪ', 'n', ' ᷠ', 'x', ' ͯ', '~', '˜', '–', '⁻');

sub superscript_char {
	die "don't know the upper index char for '$_[0]' (whole superscript: '$_[1]') at input line $.\n" unless exists $tr{$_[0]};
	return $tr{$_[0]};
}

$/ = undef;
$_ = <STDIN>;

s{(»|)<sup>(.+)</sup>}{ join('', map { superscript_char($_, $&); } split //, $2).$1 }eg;

print $_;
