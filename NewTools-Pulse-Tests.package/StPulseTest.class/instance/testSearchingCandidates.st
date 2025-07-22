running
testSearchingCandidates

	| window candidates |
	[ 
		window := pulse open.
		candidates := pulse model candidatesFor: 'Test' inContext: pulse environmentContext.
		self assert: candidates size equals: 25.	
	] ensure: [ window close ]