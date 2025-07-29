private - service
processFullAddedCandidates
"We candidatesAddedList removeAll to evade it updating the list again after the whole result is added to the list"
	| candidates |
	
	candidatesFullSearchList ifNil: [ ^ self ].
	candidatesAddedList removeAll.
	candidates := candidatesFullSearchList.
	candidatesFullSearchList := nil.
	self hideSpinner.
	self updateResultListWith: candidates