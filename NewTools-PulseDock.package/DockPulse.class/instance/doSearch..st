private - actions
doSearch: aString
	
	self owner 
		ifNil: [ ^ self ].
	numCandidatesAdded := 0.
	self searchWorker purge.
	self searchWorker schedule: [ 
		candidatesFullSearchList := self model 
			candidatesFor: aString 
			inContext: self selectedContext ]