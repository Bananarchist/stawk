BEGIN {
	if (column == 0) {
		column=1
	}
	occurrences=1
	values[1]=0

}
NR >= start_line {
	arr[$column]+=1
	if(arr[$column]==occurrences) {
		values[length(values)+1]=$column
	}
	if(arr[$column]>occurrences) {
		for (var in values) {
			delete values[var]
		}
		occurrences=arr[$column]
		values[1]=$column
	}

}
END {
	for (i=1; i<length(values)+1; i++) {
		print values[i]
	}
}

