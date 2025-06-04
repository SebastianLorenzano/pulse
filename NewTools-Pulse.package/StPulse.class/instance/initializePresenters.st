initialization
initializePresenters

	self addStyle: 'stPulse'.
	self initializePaginator.
	self initializeButtons.

	emptyPresenter := self newLabel 
		label: 'No results yet...';
		visible: false;
		yourself.

	searchPresenter := self newSearchInput
		addStyle: 'stPulseSearch';
		yourself.

	spinner := self newSpinner
		addStyle: 'stPulseSpinner';
		yourself.
	spinner hide.

	listLabel := self newLabel 
		label: 'List';
		addStyle: 'stPulseLabel';
		yourself.
	
	listPresenter := self newResultList