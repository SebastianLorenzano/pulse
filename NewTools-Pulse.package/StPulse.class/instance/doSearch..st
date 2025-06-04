private
doSearch: aString
	
	self owner 
		ifNil: [ ^ self ].
	self searchWorker purge.
	self searchWorker schedule: [ 
		| candidates |
		self showSpinner.
		candidates := self model 
			candidatesFor: aString 
			inContext: self selectedContext.
		self updateResultListWith: candidates ] 