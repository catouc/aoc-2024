use v5.36;

$|++;

my @left = [];
my @right = [];
foreach my $line ( <STDIN> ) {
	($a, $b) = $line =~ /(\d+)\s+(\d+)/;
	push @left, $a;
	push @right, $b;
}

@left = sort @left;
@right = sort @right;

my $sum = 0;
for my $i (0 .. $#left-1) {
	my $diff = abs($left[$i] - $right[$i]);
	$sum += $diff;
}

print $sum . "\n";
