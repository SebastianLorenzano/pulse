private
doSearch: aString
	
	self owner 
		ifNil: [ ^ self ].
	numCandidatesAdded := 0.
	self searchWorker purge.
	self searchWorker schedule: [ 
		self showSpinner.
		candidatesFullSearchList := self model 
			candidatesFor: aString 
			inContext: self selectedContext ] 
