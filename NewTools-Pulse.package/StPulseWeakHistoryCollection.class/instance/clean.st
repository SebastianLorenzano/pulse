private - actions
clean

	entries ifNil: [ ^ self ]. 
	entries := entries select: [ :each | each isNotNil ]