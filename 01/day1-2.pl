use v5.36;

$|++;

my @left = [];
my %counts = {};
foreach my $line ( <STDIN> ) {
	($a, $b) = $line =~ /(\d+)\s+(\d+)/;
	$counts{$b} += 1;
	push @left, $a;
}

@left = sort @left;

my $sum = 0;
for my $i (0 .. $#left-1) {
	my $diff = 0;
	if (defined $counts{$left[$i]}) {
		$diff = abs($left[$i] * $counts{$left[$i]});
	} else {
		$diff = 0;
	}
	$sum += $diff;
}

print $sum . "\n";
