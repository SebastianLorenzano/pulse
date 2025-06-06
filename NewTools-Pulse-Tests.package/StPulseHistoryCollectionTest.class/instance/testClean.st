running
testClean
	
	| entry |

	entry := (StMethodEntry on: 'entry') asHistoryEntry.
	collection add: entry.
	self assert: collection entries first equals: entry.
	entry content: nil.
	3 timesRepeat: [Smalltalk garbageCollect].
	self assert: collection entries size equals: 0.
	