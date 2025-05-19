private - actions
tabActivated: aPresenter
	
	activePresenter = aPresenter ifTrue: [ ^ self ].
	activePresenter := aPresenter.
	
	activePresenter ifNotNil: [
		previewContainer ifNotNil: [ previewContainer removeAll ].
		self updateSearchPlaceHolder.

		(searchPresenter text isEmpty and: [ activePresenter = resultListPresenter ])
			ifTrue: [ self updateResultListWith: self historyEntries ]
			ifFalse: [ 
					activePresenter contentView items isEmpty
						ifTrue: [ emptyPresenter visible: true ].
					self doSearch: searchPresenter text ] ]