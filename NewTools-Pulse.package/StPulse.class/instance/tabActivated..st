private
tabActivated: aPresenter

	self halt.
	(aPresenter = activePresenter or: [ aPresenter isNil ]) 
		ifTrue: [ ^ self ].
		
	"activePresenter := aPresenter."
	previewContainer ifNotNil: [ previewContainer removeAll ].
	self updateSearchPlaceHolder.
	
	(searchPresenter text isEmpty and: [
		 activePresenter = environmentListPresenter ])
		ifTrue: [ self updateResultListWith: self historyEntries ]
		ifFalse: [ emptyPresenter visible: activePresenter contentView items isEmpty ]