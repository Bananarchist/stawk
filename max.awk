NR >= start_line {
	if ($column > max) {
		max=$column
	}
}
END {
	print max
}
