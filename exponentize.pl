#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';

BEGIN {
	%ui = (qw/0 ⁰ 1 ¹ 2 ² 3 ³ 4 ⁴ 5 ⁵ 6 ⁶ 7 ⁷ 8 ⁸ 9 ⁹ c ͨ h ͪ n ⁿ x ͯ ~ ˜ – ⁻/);
	sub exponent_char {
		die "don't know the upper index char for '$_[0]' at input line $.\n" unless exists $ui{$_[0]};
		return $ui{$_[0]};
	}
}

s{\^([0-9chnx~–]+)}{join '', map { exponent_char($_); } split //, $1}eg;
