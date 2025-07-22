initialization
initializePresenters

	self addStyle: 'stPulse'.
	self initializePaginator.
	self initializeButtons.
	self initializeListLabel.
	
	spinner := (self instantiate: StPulseLoadingPresenter)
		addStyle: 'stPulseSpinner';
		yourself.
	spinner hide.
	
	emptyPresenter := self newLabel 
		label: 'No results yet...';
		visible: false;
		yourself.

	searchPresenter := self newSearchInput
		addStyle: 'stPulseSearch';
		yourself.

	listPresenter := self newEasyListView
		addStyle: 'stPulseList';
		rowPresenterClass: StPulseRowPresenter;
		yourself