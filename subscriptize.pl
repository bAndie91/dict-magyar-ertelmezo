#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';

%tr = (qw/0 ₀ 1 ₁ 2 ₂ 3 ₃ 4 ₄ 5 ₅ 6 ₆ 7 ₇ 8 ₈ 9 ₉ n ₙ/);

sub subscript_char {
	die "don't know the lower index char for '$_[0]' (whole subscript: '$_[1]') at input line $.\n" unless exists $tr{$_[0]};
	return $tr{$_[0]};
}

$/ = undef;
$_ = <STDIN>;

s{(»|)<sub>(.+)</sub>}{ join('', map { subscript_char($_, $&); } split //, $2).$1 }eg;

print $_;
