#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';
use Encode qw/encode decode encode_utf8 decode_utf8/;

$/ = undef;
$_ = <STDIN>;

$re_span = q{(?'SPAN'<span.*?>(?:(?&INSPAN))*</span>)};
$re_span_interior = q{(?'INSPAN'(?!<span.*?>|</span>).|(?&SPAN))};

$highlight   = "\x1B[100m【";
$no_highlight = "】\x1B[49m";

s{(?(DEFINE)$re_span)(?(DEFINE)$re_span_interior)<span class="popup">(?'SP1'\s*)(?'POPUP'(?:$re_span_interior)*?)(?'SP2'\s*)(</span>)(•)?}{$+{SP1}$highlight$+{POPUP}$no_highlight$+{SP2}}gis;

print $_;
