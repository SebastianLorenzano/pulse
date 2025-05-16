running
testAdd
	
	| index |
	index := 0.
	collection add: index.
	self assert: collection history first equals: 0.
	30 timesRepeat: [ 
		index := index + 1.
		collection add: index ].
	self assert: collection history first equals: 30
	
	