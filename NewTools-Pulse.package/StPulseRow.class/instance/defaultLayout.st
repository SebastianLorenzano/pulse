layout
defaultLayout

	^ SpBoxLayout newHorizontal
		spacing: 5;
		borderWidth: 2;
		add: iconPresenter expand: false;
		add: namePresenter;
		add: contextPresenter expand: false;
		yourself