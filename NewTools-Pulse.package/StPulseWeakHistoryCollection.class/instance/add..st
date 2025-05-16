accessing
add: aStEntry

	self entries size < self maxEntries
		ifFalse: [ entries removeLast ].
	entries addFirst: aStEntry
