private - actions
showPopover: aPresenter
	
	popover ifNotNil: [ popover dismiss ].
	(popover := self newPopover)
		relativeTo: aPresenter ;
		bePositionTop ;
		presenter: (SpPresenter new
			addStyle: 'stPulseHelp';
			layout: (SpGridLayout new
				beColumnNotHomogeneous ;
				column: 2 expand: false ;
				build: [ :builder | self class createTips do: [ :each |
						builder add: each key ; add: each value ; nextRow ] ]
				yourself) ;
			yourself) ;
		popup