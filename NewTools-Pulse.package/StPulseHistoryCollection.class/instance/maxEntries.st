accessing
maxEntries
"The default value of maxEntries is 25"
	^ maxEntries ifNil: [ maxEntries := 25 ]