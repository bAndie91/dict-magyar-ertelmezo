#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';

BEGIN {
	%ui = (qw/0 ₀ 1 ₁ 2 ₂ 3 ₃ 4 ₄ 5 ₅ 6 ₆ 7 ₇ 8 ₈ 9 ₉ n ₙ/);
	sub subscript_char {
		die "don't know the lower index char for '$_[0]' at input line $.\n" unless exists $ui{$_[0]};
		return $ui{$_[0]};
	}
}

s{(»|)(?:(?<=\S)\[(?'subscript'\d+)\]|(?<!b[ae])\[(?'subscript'n)\])}{join('', map { subscript_char($_); } split //, $+{'subscript'}).$1}eg;
