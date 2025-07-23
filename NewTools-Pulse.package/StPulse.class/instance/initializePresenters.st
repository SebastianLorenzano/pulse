initialization
initializePresenters

	self initializePaginator.
	self initializeButtons.
	self initializeListLabel.
	
	spinner := (self instantiate: StPulseLoadingPresenter).
	spinner hide.
	
	emptyPresenter := self newLabel 
		label: 'No results yet...';
		visible: false;
		yourself.
	searchPresenter := self newSearchInput.
	listPresenter := self newEasyListView
		rowPresenterClass: StPulseRowPresenter;
		yourself.
	self addStyles