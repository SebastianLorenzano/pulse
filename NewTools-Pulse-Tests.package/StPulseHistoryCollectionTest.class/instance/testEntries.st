running
testEntries
	
	| entry1 |

	entry1 := StClassEntry new content: 'entry1'.
	self assert: collection entries isNotNil.
	collection add: entry1.
	self assert: collection entries size equals: 1.
	entry1 content: nil.
	self assert: collection entries size equals: 0
	