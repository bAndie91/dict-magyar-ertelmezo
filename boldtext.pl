#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';
use Encode qw/encode decode encode_utf8 decode_utf8/;

$/ = undef;
$_ = <STDIN>;

$re_span = q{(?'SPAN'<span.*?>(?:(?&INSPAN))*</span>)};
$re_span_interior = q{(?'INSPAN'(?!<span.*?>|</span>).|(?&SPAN))};

$ansi_bold = "\x1B[1m";
$ansi_nobold = "\x1B[22m";

s{(?(DEFINE)$re_span)(?(DEFINE)$re_span_interior)<span class="popup">(?'SP1'\s*)(?'POPUP'(?:$re_span_interior)*?)(?'SP2'\s*)(</span>)(•)?}{$+{SP1}$ansi_bold【$+{POPUP}】$ansi_nobold$+{SP2}}gi;

print $_;
