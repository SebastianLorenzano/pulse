private - accessing
add: aStEntry to: aCollection

	(aCollection size) < self maxEntries
		ifFalse: [ aCollection removeLast ].
	aCollection addFirst: aStEntry
