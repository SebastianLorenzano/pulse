private
tabActivated: aPresenter
	
	activePresenter = aPresenter ifTrue: [ ^ self ].
	
	activePresenter := aPresenter.
	activePresenter ifNotNil: [
		
		previewContainer ifNotNil: [ previewContainer removeAll ].
		self updateSearchPlaceHolder.
		self doSearch: searchPresenter text ]