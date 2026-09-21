#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';
use Encode qw/encode decode encode_utf8 decode_utf8/;

$/ = undef;
$_ = <STDIN>;

s{<span class="popup">(.+?)</span>(•)?}{\x1B[1m【$1】\x1B[22m}g;

print $_;
