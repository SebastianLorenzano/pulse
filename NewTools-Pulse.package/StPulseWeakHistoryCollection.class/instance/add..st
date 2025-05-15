accessing
add: aStEntry
"Should add a new entry to the very start"
"Something like:

entries select: [ :each | each ifNotNil ] size < maxEntries
		ifFalse: [ entries removeLast ].
		
	entries addFirst: aStEntry.
	self clean
"