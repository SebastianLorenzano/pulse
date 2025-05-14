layout
defaultLayout

	^ self newPresenter 
		addStyle: 'stPulseTab' ;
		layout: (SpBoxLayout newHorizontal
			add: iconPresenter expand: false;
			spacing: 5;
			borderWidth: 2;
			add: namePresenter;
			add: contextPresenter expand: false;
			yourself)
		yourself