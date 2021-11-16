open(FH, "rcsb_pdb_6CWZ.fasta") or die "The file cannot be opened" ;
@arr = <FH>;
chomp(@arr);
$protein_sequence = join("\n", @arr);
@list = split(">", $protein_sequence);
print "\n";
foreach $i (@list)
{
	if ($i =~ /NA/)
	{
		@i = split(" ", $i);
		print @i[0];
		print "\n";
	}
}

