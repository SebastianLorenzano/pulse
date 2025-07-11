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

	spinner := (self instantiate: StPulseLoadingPresenter)
		addStyle: 'stPulseSpinner';
		yourself.
	spinner hide.

	listLabelPresenter := self newLabel
		addStyle: 'stPulseLabel';
		yourself.
	
	listPresenter := self newEasyListView
		addStyle: 'stPulseList';
		rowPresenterClass: StPulseRowPresenter;
		yourself