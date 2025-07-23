initialization
initializeListLabel

	listLabelPresenter := self newLabel.
	listCounterPresenter := self newLabel.
	listTitleLayout := self newPresenter
		layout: (SpBoxLayout newLeftToRight 
			add: listLabelPresenter expand: true;
			add: listCounterPresenter expand: false;
			add: findAllButton expand: false;
			yourself);
		yourself