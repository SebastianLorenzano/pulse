private - accessing
newResultList
	
	^ self newEasyListView
		addStyle: 'stPulseList' ;
		rowPresenterClass: StPulseRow ;
		headerTitle: 'Environment'
		yourself