accessing
add: aStEntry
"Should add a new entry to the very start"

	(self history size) < self maxEntries
		ifFalse: [ history removeLast ].
	history addFirst: aStEntry.
	self clean
