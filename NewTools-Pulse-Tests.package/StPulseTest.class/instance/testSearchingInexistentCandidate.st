running
testSearchingInexistentCandidate

	| window candidates |	

	[ 
		window := pulse open.
		candidates := pulse model candidatesFor: 'ClassThatDoesntExist' inContext: pulse environmentContext.
		self assert: candidates size equals: 0.	
	] ensure: [ window close ]