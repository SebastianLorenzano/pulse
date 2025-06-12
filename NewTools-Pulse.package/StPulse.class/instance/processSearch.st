private - service
processSearch

	spinner isVisible ifTrue: [ spinner updateStep ].
	
	waitingSearchText := searchPresenter text.
	waitingSearchText = lastSearchText 
		ifTrue: [ 
			candidatesFullSearchList
				ifNil: [ self processAddedCandidates ]
				ifNotNil: [ self processFullAddedCandidates ] ]
		ifFalse: [ 
			self showSpinner.
			lastSearchText := waitingSearchText.
			self doSearch: waitingSearchText ].
