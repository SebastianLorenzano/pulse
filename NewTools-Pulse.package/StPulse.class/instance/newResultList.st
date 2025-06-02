private - accessing
newResultList
	
	^ self newEasyListView
		addStyle: 'stPulseList' ;
		rowPresenterClass: StPulseRow;
		yourself