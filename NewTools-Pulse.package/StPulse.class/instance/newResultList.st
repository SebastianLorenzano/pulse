private - accessing
newResultList

	^ self newEasyListView
		addStyle: 'stList';
		addStyle: 'stSpotterSearch';
		rowPresenterClass: StPulseRow;
		yourself