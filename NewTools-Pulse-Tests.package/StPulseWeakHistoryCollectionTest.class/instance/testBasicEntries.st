running
testBasicEntries
	
	| entry1 |

	entry1 := StClassEntry new.
	collection add: entry1.
	self assert: collection entries size equals: 1.
	entry1 := nil.
	3 timesRepeat: [Smalltalk garbageCollect].
	self assert: collection basicEntries first equals: nil