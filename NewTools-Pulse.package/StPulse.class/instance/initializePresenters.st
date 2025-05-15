initialization
initializePresenters

	self addStyle: 'stPulse'.
	
	emptyPresenter := self newLabel 
		label: 'No results yet...';
		yourself.

	searchPresenter := self newSearchInput
		addStyle: 'stPulseSearch';
		yourself.

	resultListPresenter := self newResultList.
	editorListPresenter := self newResultList.
	toolListPresenter := self newResultList.
		
	helpButton := self newButton
		label: 'Help';
		action: [ self showPopover: helpButton ]
	
