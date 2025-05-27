private - accessing
selectedContext

	paginator selectedPage = 1 ifTrue: [ ^ self environmentContext ].
	paginator selectedPage = 2 ifTrue: [ ^ self windowsContext ].
	
	^  self toolsContext