running
testBasicEntries
	
	| entry |

	entry := StClassEntry on: 'entry'.
	collection add: entry.
	self assert: collection entries size equals: 1.
	entry content: nil.
	self assert: collection basicEntries first equals: entry