accessing
add: aStEntry

	self entries size < self maxEntries
		ifFalse: [ entries removeLast ].
	self remove: aStEntry.
	entries addFirst: aStEntry
