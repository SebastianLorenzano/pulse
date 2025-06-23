running
testSearchingAllTypeOfCandidates

	| window candidates |	

	[ 
		window := pulse open.
		candidates := pulse model candidatesFor: 'Test' inContext: pulse environmentContext.
		100 milliSeconds wait.
		self assert: (candidates atWrap: 1) categoryLabel equals: 'class'.
		
		candidates := pulse model candidatesFor: 'test' inContext: pulse environmentContext.
		100 milliSeconds wait.
		self assert: (candidates atWrap: 1) categoryLabel equals: 'method'.
		
		candidates := pulse model candidatesFor: 'NewTools' inContext: pulse environmentContext.
		100 milliSeconds wait.
		self assert: (candidates atWrap: 1) categoryLabel equals: 'package'.
		
		candidates := pulse model candidatesFor: '' inContext: pulse windowsContext.
		100 milliSeconds wait.
		self assert: (candidates atWrap: 1) categoryLabel equals: 'window'.
		
		candidates := pulse model candidatesFor: '' inContext: pulse toolsContext.
		100 milliSeconds wait.
		self assert: (candidates atWrap: 1) categoryLabel equals: 'menu'	
	] ensure: [ window close ]