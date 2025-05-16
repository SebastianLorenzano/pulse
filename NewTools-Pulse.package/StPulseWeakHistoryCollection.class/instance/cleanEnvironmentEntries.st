private - actions
cleanEnvironmentEntries

	environmentEntries ifNil: [ ^ self ].
	environmentEntries := environmentEntries select: [ :each | each isNotNil ]