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

	listLabel := self newLabel label: 'List'.

	environmentListPresenter := self newResultList.
	editorListPresenter := self newResultList.
	toolListPresenter := self newResultList.
		
    helpButton := self newButton
        addStyle: 'small';
        icon: (self iconNamed: #help);
        action: [ self showPopover: helpButton ].

	millerList := self instantiate: SpMillerColumnPresenter.
	millerList  
		withoutHorizontalScrollBar;
		visiblePages: 1;
		spacing: 5;
		presenterBlock: [ :aModel |  
				self acceptSelection. 
				SpNullMillerPresenter new setModelBeforeInitialization: activePresenter ].
	paginator := SpPaginatorPresenter new.
	paginator visiblePages: 1.
	paginator chainTo: millerList.
	paginator withoutResizingEdges
	
