initialization
initializePresenters

	self addStyle: 'stPulse'.
	
	emptyPresenter := self newLabel 
		label: 'No results yet...';
		yourself.

	searchPresenter := self newSearchInput
		addStyle: 'stPulseSearch';
		yourself.

	resultListPresenter := self newResultList
		addStyle: 'stPulseList'
		yourself.
	editorListPresenter := self newResultList
		addStyle: 'stPulseList'; 
		yourself.
	toolListPresenter := self newResultList
		addStyle: 'stPulseList'; 
		yourself.
		
	helpButton := self newButton
		label: 'Help';
		action: [ self showPopover: helpButton ]
	
