BEGIN {
	if (column == 0) {
		column=1
	}
	it=1
}
NR >= start_line {
	arr[it]=$column
	it+=1
}
END {
	asort(arr)
	midpt = int(length(arr)/2)
	if (length(arr) % 2 == 0) {
		print ((arr[midpt] + arr[midpt+1]) / 2)
	} else {
		print arr[midpt]
	}
}
