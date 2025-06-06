running
testBasicEntries
	
	| entry1 |

	entry1 := StClassEntry on: 'entry'.
	collection add: entry1.
	self assert: collection entries size equals: 1.
	entry1 content: nil.
	self assert: collection basicEntries first equals: entry1