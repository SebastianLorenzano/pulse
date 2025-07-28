initialization
newResultList

	^ self newEasyListView
		addStyle: 'stList';
		addStyle: 'stSpotterSearch';
		rowPresenterClass: PulseRowPresenterDock;
		yourself