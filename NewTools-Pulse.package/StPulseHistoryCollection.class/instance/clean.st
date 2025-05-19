accessing
clean

	entries ifNil: [ ^ self ]. 
	entries := entries select: [ :each | each isNotNil and: each content isNotNil ]