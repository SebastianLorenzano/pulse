private - updating
updateListLabel

	listLabel ifNil: [ ^ self ].
	activePresenter = environmentListPresenter ifTrue: [
		listLabel label: 'Environment'.
			^ self ].
	activePresenter = editorListPresenter ifTrue: [
		listLabel label: 'Windows'.
			^ self ].
	activePresenter = toolListPresenter ifTrue: [ 
		listLabel label: 'Commands'. 
			^ self].
	^ self