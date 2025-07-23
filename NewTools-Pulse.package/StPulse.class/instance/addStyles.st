initialization
addStyles

	self addStyle: 'stPulse'.
	spinner addStyle: 'stPulseSpinner'.
	searchPresenter addStyle: 'stPulseSearch'.
	listPresenter addStyle: 'stPulseList'.
	paginator addStyle: 'stPulsePaginator'.
	
	findAllButton
		addStyle: 'small';
		addStyle: 'stPulseButton'.
	helpButton
		addStyle: 'small';
		addStyle: 'stPulseButton'.
	settingsButton
		addStyle: 'small';
		addStyle: 'stPulseButton'.
		
	listLabelPresenter addStyle: 'stPulseLabel'.
	listCounterPresenter addStyle: 'dim'.
	helpPresenter addStyle: 'stPulseHelp'	