private
tabActivated: aPresenter
	
	(activePresenter = aPresenter or: [ aPresenter isNil ]) 
		ifTrue: [ ^ self ].
		
	activePresenter := aPresenter.
	previewContainer ifNotNil: [ previewContainer removeAll ].
	self updateSearchPlaceHolder.
	(searchPresenter text isEmpty and: [ activePresenter = resultListPresenter ])
		ifTrue: [ self updateResultListWith: self historyEntries ]
		ifFalse: [ emptyPresenter visible: activePresenter contentView items isEmpty ]
		