private - actions
doFullSearch: aString
	
	self owner 
		ifNil: [ ^ self ].
	self searchWorker purge.
	self searchWorker schedule: [ 
		candidatesFullSearchList := self model 
			allCandidatesFor: aString 
			inContext: self selectedContext ]