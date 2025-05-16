running
testClean
	
	| obj |

	obj := Object new.
	collection add: obj.
	self assert: collection entries first equals: obj.
	obj := nil.
	3 timesRepeat: [Smalltalk garbageCollect].
	self assert: collection entries size equals: 0.
	