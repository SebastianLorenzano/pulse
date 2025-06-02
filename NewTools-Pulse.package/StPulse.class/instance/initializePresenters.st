initialization
initializePresenters

	self addStyle: 'stPulse'.

	emptyPresenter := self newLabel 
		label: 'No results yet...';
		visible: false ;
		yourself.

	searchPresenter := self newSearchInput
		addStyle: 'stPulseLabel';
		yourself.

	listLabel := self newLabel 
	label: 'List' ;
	addStyle: 'stPulseLabel' ;
	yourself.
	
	listPresenter := self newResultList.
	
	self initializePaginator.
	self initializeButtons