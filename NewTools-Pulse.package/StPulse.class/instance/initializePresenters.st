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

	listLabel := self newLabel 
	label: 'List' ;
	addStyle: 'stPulseLabel' ;
	yourself.
	
	listPresenter := self newResultList.
    helpButton := self newButton
        addStyle: 'small';
        icon: (self iconNamed: #help);
        action: [ self showPopover: helpButton ].
	self initializePaginator.
	
	toolbar := self newToolbar.
	self initializeToolbar