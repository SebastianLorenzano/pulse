private - service
processSearch

	waitingSearchText := searchPresenter text.
	spinner isVisible ifTrue: [ spinner updateStep ].
	
	doFullSearchNext
		ifTrue: [
			doFullSearchNext := false.
			self showSpinner.
			^ self doFullSearch: waitingSearchText ].

	waitingSearchText = lastSearchText 
		ifTrue: [
			candidatesFullSearchList
				ifNil: [ self processAddedCandidates ]
				ifNotNil: [ self processFullAddedCandidates ] ]
		ifFalse: [
			self showSpinner.
			lastSearchText := waitingSearchText.
			self doSearch: waitingSearchText ]