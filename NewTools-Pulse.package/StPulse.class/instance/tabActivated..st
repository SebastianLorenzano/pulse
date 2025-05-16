private - actions
tabActivated: aPresenter
	
	activePresenter = aPresenter ifTrue: [ ^ self ].
	
	
	activePresenter := aPresenter.
	activePresenter ifNotNil: [
		previewContainer ifNotNil: [ previewContainer removeAll ].
		self updateSearchPlaceHolder.
		activePresenter contentView items isEmpty
			ifFalse: [ emptyPresenter visible: false ].
		self doSearch: searchPresenter text ]