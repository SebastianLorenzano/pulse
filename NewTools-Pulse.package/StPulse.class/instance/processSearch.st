private
processSearch
	
	waitingSearchText := searchPresenter text.
	waitingSearchText = lastSearchText ifTrue: [ ^ self ].

	lastSearchText := waitingSearchText.
	self doSearch: waitingSearchText 