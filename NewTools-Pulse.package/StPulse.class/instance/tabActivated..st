private
tabActivated: aPresenter
	
	activePresenter = aPresenter ifTrue: [ ^ self ].
	
	activePresenter := aPresenter.
	activePresenter ifNotNil: [
		self updateSearchPlaceHolder.
		self doSearch: searchPresenter text ]