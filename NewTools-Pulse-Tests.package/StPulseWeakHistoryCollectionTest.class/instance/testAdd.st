running
testAdd
	
	| entry1 entry2 entry3 |	
		
	entry1 := StClassEntry new content: 'entry1'.
	entry2 := StMethodEntry new content: 'entry2'.
	entry3 := StPackageEntry new content: 'entry3'.

	collection add: entry1.
	self assert: collection entries first content equals: 'entry1'.
	collection add: entry2.
	self assert: collection entries first content equals: 'entry2'.
	entry2 := nil.
	500 milliSeconds wait.
	5 timesRepeat: [Smalltalk garbageCollect].
	self assert: collection entries first content equals: 'entry1'.
	collection add: entry3.
	self assert: collection entries first content equals: 'entry3'.