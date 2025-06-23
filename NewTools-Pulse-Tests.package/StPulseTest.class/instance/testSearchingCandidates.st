running
testSearchingCandidates

	| window candidates |
	
	[ 
		window := pulse open.
		candidates := pulse model candidatesFor: 'Test' inContext: pulse environmentContext.
		100 milliSeconds wait.
		self assert: candidates size equals: 25.	
	] ensure: [ window close ]