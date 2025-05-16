running
testAdd
	
	| entry1 entry2 entry3 entry4 |	
		
	entry1 := StClassEntry new content: 'entry1'.
	entry2 := StMethodEntry new content: 'entry2'.
	entry3 := StWorldMenuEntry new content: 'entry3'.
	entry4 := StWorldMenuEntry new content: 'entry4'.
	collection add: entry1.
	self assert: collection environmentEntries first content equals: 'entry1'.
	collection add: entry2.
	self assert: collection environmentEntries first content equals: 'entry2'.
	entry2 := nil.
	500 milliSeconds wait.
	5 timesRepeat: [Smalltalk garbageCollect].
	"self assert: collection environmentEntries first content equals: 'entry1'."
	collection add: entry3.
	self assert: collection menuEntries first content equals: 'entry3'.
	collection add: entry4.
	self assert: collection menuEntries first content equals: 'entry4'.
	entry4 := nil.
	3 timesRepeat: [Smalltalk garbageCollect].
	self assert: collection menuEntries first content equals: 'entry3'