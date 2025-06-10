initialization
initializePresenters

"	self addStyle: 'stRow'.
	self addStyle: 'stPulseRow'."
	
	iconPresenter := self newImage.
	namePresenter := self newLabel
		addStyle: 'stPulseRowText';
		yourself.
	contextPresenter := self newLabel
		addStyle: 'dim';
		addStyle: 'tinyFont';
		yourself
	