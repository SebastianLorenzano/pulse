running
testBasicEnvironmentEntries
	
	| entry1 |

	entry1 := StClassEntry new.
	collection add: entry1.
	self assert: collection environmentEntries size equals: 1.
	
	entry1 := nil.
	3 timesRepeat: [Smalltalk garbageCollect].
	self assert: collection basicEnvironmentEntries first equals: nil