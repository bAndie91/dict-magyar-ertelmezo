#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';

%tr = (qw/0 ₀ 1 ₁ 2 ₂ 3 ₃ 4 ₄ 5 ₅ 6 ₆ 7 ₇ 8 ₈ 9 ₉ n ₙ/, ' ', ' ');

sub subscript_char {
	die "don't know the lower index char for '$_[0]' (whole subscript: '$_[1]') at input line $.\n" unless exists $tr{$_[0]};
	return $tr{$_[0]};
}

$/ = undef;
$_ = <STDIN>;

s{(»|)<sub>(.+?)</sub>}{ join('', map { subscript_char($_, $&); } split //, $2).$1 }eg;
s{(?:(»)(\s*)|)\[(\d+)\]}{ $2.join('', map { subscript_char($_, $&); } split //, $3).$1 }eg;

print $_;


# ag --nofilename -o '([^(>\s]+)(</span>|\s)*\[\d{1,3}\]' -r szavak/ | perl -pe 'use open qw/:std :utf8/; $_=uc' | sort -u > subs
# cat subs | sd '[ ]?</SPAN>' '' | sd '\[' ' [' | sd ',' ' ' | while read word index; do lc=${word,,}; k2b=${word:0:1}${lc:1:1}; if [ ! -e "szavak/${word:0:1}/${word} ${index}.html" -a ! -e "szavak/$k2b/$word $index.html" -a ! -e "szavak/${word:0:1}/$word.html" -a ! -e "szavak/$k2b/$word.html"  ]; then echo $word $index; fi; done > subs-notfoundheadword
