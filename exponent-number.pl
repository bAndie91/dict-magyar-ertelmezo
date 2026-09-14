#!/usr/bin/env perl

BEGIN {
	%ui = (qw/0 ⁰ 1 ¹ 2 ² 3 ³ 4 ⁴ 5 ⁵ 6 ⁶ 7 ⁷ 8 ⁸ 9 ⁹ - ⁻/);
	sub upperindex {
		die unless exists $ui{$_[0]};
		return $ui{$_[0]};
	}
}
s{\^(-?[0-9]+)}{join '', map { upperindex($_); } split //, $1}eg;
