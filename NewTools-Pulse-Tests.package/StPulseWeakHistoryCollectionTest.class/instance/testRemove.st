running
testRemove
	
	| entry |

	entry := StClassEntry new content: 'entry1'.
	collection add: entry.
	self assert: collection entries size equals: 1.
	collection add: entry.
	self assert: collection entries size equals: 1.
	collection remove: entry.
	self assert: collection entries size equals: 0.
	