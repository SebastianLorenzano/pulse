private - accessing
selectedContext

	activePresenter = editorListPresenter ifTrue: [ ^ self windowsContext ].
	activePresenter = toolListPresenter ifTrue: [ ^ self toolsContext ].
	
	^  self environmentContext