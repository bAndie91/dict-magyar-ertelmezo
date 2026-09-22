#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';
use Encode qw/encode decode encode_utf8 decode_utf8/;

$word = lc decode_utf8 $ARGV[0];

$/ = undef;
$_ = <STDIN>;

s{ϖ}{ῶ}g;
s{š}{≠}g;
s{ˇ}{⋅}g;
s{\x{95}}{⋅}g if $word =~ /^(szorzó|hatvány)$/;
if($word eq 'nyolcad')
{
	s{\((jele:).*?\)}{($1 ♪, ♪ [lefele lógó szárral])};
	s{(Pontozott nyolcad.*?)\(.*?\)}{$1(♪𝅭 , ♪𝅭 [lefele lógó szárral])};
	s{(\d+)/(\d+)}{$1⁄$2}g;
}
s{}{—}g;
s{ą}{±}g;
s{ŕ}{à}g; s{Ŕ}{À}g;
s{ĺ}{ȧ}g;
s{â}{ȧ}g;
s{ă}{ā}g;
s{ě}{ē}g;
s{Č}{⏑}g;
s{Ě}{⊂}g if $word eq 'ujjafa';
s{Ľ}{∞}g;
s{ł}{; }g if $word =~ /^(szegfű|szembefordít)$/;
s{ň}{}g if $word eq 'íróeszköz';
s{û}{ű}g if $word eq 'miszticizmus';
s{õ}{ő}g if $word eq 'miszticizmus';
s{(a figyelmet vmire felhívó ilyen jel: )→}{$1➳} if $word eq 'nyíl';
s{\x{AD}}{↑}g if $word eq 'nyíl';
s{Vörös\x{AD} marty}{Vörösmarty}g if $word eq 'sok';

s{([\x{80}-\x{9F}])}{ decode('CP1252', encode('latin1', $1)) }eg;

print $_;
