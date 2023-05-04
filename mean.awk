BEGIN {
	if (column == 0) {
		column=1
	}
}
NR >= start_line {
	total+=$column
}
END {
	print (total/NR)
}
