running
testMaxEntries
	
	| entry1 entry2 |

	entry1 := StClassEntry new content: 'entry1'.
	entry2 := StClassEntry new content: 'entry2'.
	collection maxEntries: 1.
	collection add: entry1.
	self assert: collection entries first content equals: 'entry1'.
	collection add: entry2.
	self assert: collection entries first content equals: 'entry2'.
	