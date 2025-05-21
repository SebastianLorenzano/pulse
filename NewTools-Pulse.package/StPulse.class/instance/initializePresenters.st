initialization
initializePresenters

	self addStyle: 'stPulse'.
	
	emptyPresenter := self newLabel 
		label: 'No results yet...';
		visible: false ;
		yourself.

	searchPresenter := self newSearchInput
		addStyle: 'stPulseSearch';
		yourself.

	resultListPresenter := self newResultList.
	editorListPresenter := self newResultList.
	toolListPresenter := self newResultList.
		
    helpButton := self newButton
        addStyle: 'small';
        icon: (self iconNamed: #help);
        action: [ self showPopover: helpButton ]
	
