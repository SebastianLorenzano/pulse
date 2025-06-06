running
testAdd
	
	| entry1 entry2 |	
		
	entry1 := (StClassEntry on: self class) asHistoryEntry.
	entry2 := (StMethodEntry on: self) asHistoryEntry.

	collection add: entry1.
	self assert: collection entries first equals: entry1.
	collection add: entry2.
	self assert: collection entries first equals: entry2