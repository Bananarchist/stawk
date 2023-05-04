NR == start_line {
	min=$column
	max=$column
}
NR > start_line {
	if ($column < min) {
		min=$column
	} 
	if ($column > max) {
		max=$column
	}
}
END {
	print (max - min)
}
