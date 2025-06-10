private
processSearch

	spinner isVisible ifTrue: [ spinner updateStep ].
	
	waitingSearchText := searchPresenter text.
	waitingSearchText = lastSearchText ifTrue: [ ^ self ].

	lastSearchText := waitingSearchText.
	spinner reset.
	self doSearch: waitingSearchText 