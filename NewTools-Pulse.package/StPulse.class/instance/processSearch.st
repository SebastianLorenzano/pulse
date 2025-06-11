private
processSearch

	spinner isVisible ifTrue: [ spinner updateStep ].
	
	waitingSearchText := searchPresenter text.
	waitingSearchText = lastSearchText 
		ifTrue: [ 
			candidatesFullSearchList
				ifNil: [ self processAddedCandidates ]
				ifNotNil: [ self processFullAddedCandidates ] ]
		ifFalse: [ 
			spinner reset.
			lastSearchText := waitingSearchText.
			self doSearch: waitingSearchText ].
