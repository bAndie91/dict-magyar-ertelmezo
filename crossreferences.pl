#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';


sub xrefize_all {
	my @res = ();
	my $p = 0;
	for my $x (split /(\s*[,;]\s*)/, $_[0])
	{
		push @res, ($p % 2) ? $x : xrefize($x);
		$p++;
	}
	return join '', @res;
}
sub xrefize {
	my $x = $_[0];
	my $pre = '';
	my $val = $x;
	my $rest = '';
	if($x =~ /^((?:a|az)\s+|)(.+)(\s+(?:címsz(?:ó|av).*|[₀₁₂₃₄₅₆₇₈₉]|))$/i)
	{
		$pre = $1;
		$val = $2;
		$rest = $3;
	}
	return $x if $val =~ /\s/;
	return $x if $val =~ /^(pl|kül)$/i;
	return $pre . '{' . $val . '}' . $rest;
}

$/ = undef;
$_ = <STDIN>;

s{\b([Ll]d(?:\.(?:\s+még:?|)|:)\s+)([^[(<.\x1B]+)}{ $1 . xrefize_all($2) }eg;

print $_;
