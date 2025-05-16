private - actions
cleanMenuEntries

	menuEntries ifNil: [ ^ self ]. 
	menuEntries := menuEntries select: [ :each | each isNotNil ]