#!/usr/bin/env perl

use Encode qw/encode decode encode_utf8 decode_utf8/;
use open ':std', ':utf8';

$/ = undef;
$_ = <STDIN>;

s{ϖ}{ῶ}g;
s{š}{≠}g;
s{ŕ}{à}g; s{Ŕ}{À}g;
s{ˇ}{⋅}g;
s{}{—}g;
s{ą}{±}g;
s{â}{ȧ}g;
s{ă}{ā}g;
s{Č}{⏑}g;

s{([\x{80}-\x{9F}])}{ decode('CP1252', encode('latin1', $1)) }eg;

print $_;
