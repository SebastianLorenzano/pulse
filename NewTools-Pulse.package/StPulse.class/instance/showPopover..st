private - actions
showPopover: aPresenter
	
	popover ifNotNil: [ popover dismiss ].
	(popover := self newPopover)
		relativeTo: aPresenter ;
		bePositionTop ;
		presenter: helpPresenter
		popup