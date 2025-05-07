initialization
initializePresenters

	self addStyle: 'stRow'.
	self addStyle: 'dockSpotterRow'.
	
	iconPresenter := self newImage.
	namePresenter := self newLabel.
	contextPresenter := self newLabel
		addStyle: 'dim';
		addStyle: 'tinyFont';
		yourself
	