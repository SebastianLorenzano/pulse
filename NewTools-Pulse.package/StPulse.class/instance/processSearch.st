private
processSearch
	
	waitingSearchText := searchPresenter text.
	waitingSearchText = lastSearchText
		ifTrue: [ ^ self ].
	self doSearch: waitingSearchText 