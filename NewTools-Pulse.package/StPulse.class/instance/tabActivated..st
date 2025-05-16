private - actions
tabActivated: aPresenter
	
	activePresenter = aPresenter ifTrue: [ ^ self ].
	
	emptyPresenter visible: false.
	activePresenter := aPresenter.
	activePresenter ifNotNil: [
		previewContainer ifNotNil: [ previewContainer removeAll ].
		self updateSearchPlaceHolder.
		self doSearch: searchPresenter text ]