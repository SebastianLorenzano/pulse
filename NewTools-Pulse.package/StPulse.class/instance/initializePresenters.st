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

	resultListPresenter := self newResultList.
	editorListPresenter := self newResultList.
	toolListPresenter := self newResultList