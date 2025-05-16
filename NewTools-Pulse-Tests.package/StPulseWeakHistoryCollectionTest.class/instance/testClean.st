running
testClean
	
	| obj |

	obj := Object new.
	collection add: obj.
	self assert: collection history first equals: obj.
	obj := nil.
	3 timesRepeat: [Smalltalk garbageCollect].
	self assert: collection history size equals: 0.
	