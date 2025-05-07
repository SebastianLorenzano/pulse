initialization
initializePresenters

	self addStyle: 'stSpotter'.
	self addStyle: 'dockSpotter'.

	emptyPresenter := self newLabel 
		addStyle: 'dim';
		label: 'No results yet...';
		yourself.

	searchPresenter := self newSearchInput
		addStyle: 'stSpotterSearch';
		yourself.

	resultListPresenter := self newResultList
		addStyle: 'stSpotterList'; 
		yourself.
	editorListPresenter := self newResultList
		addStyle: 'stSpotterList'; 
		yourself.
	toolListPresenter := self newResultList
		addStyle: 'stSpotterList'; 
		yourself.