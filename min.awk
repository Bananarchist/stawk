NR == start_line {
	min=$column
}
NR > start_line {
	if ($column < min) {
		min=$column
	}
}
END {
	print min
}
