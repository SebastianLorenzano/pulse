initialization
initializeListLabel

	listLabelPresenter := self newLabel
		addStyle: 'stPulseLabel';
		yourself.
		
	listCounterPresenter := self newLabel
		addStyle: 'dim';
		yourself.
	
	listTitleLayout := self newPresenter
		layout: (SpBoxLayout newLeftToRight 
			add: listLabelPresenter expand: true;
			add: listCounterPresenter expand: false;
			add: findAllButton expand: false;
			yourself);
		yourself