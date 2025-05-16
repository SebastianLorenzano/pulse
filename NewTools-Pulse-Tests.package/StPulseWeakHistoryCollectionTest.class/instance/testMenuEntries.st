running
testMenuEntries
	
	| entry1 |

	entry1 := StWorldMenuEntry new.
	collection add: entry1.
	self assert: collection menuEntries size equals: 1.
	
	entry1 := nil.
	3 timesRepeat: [Smalltalk garbageCollect].
	self assert: collection menuEntries size equals: 0