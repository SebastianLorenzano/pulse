private - actions
showPopover: aPosition relativeTo: aPresenter

	popover ifNotNil: [ popover dismiss ].
	(popover := self newPopover)
		relativeTo: aPresenter;
		position: aPosition;
		presenter: (SpPresenter new 
			layout: (SpBoxLayout newTopToBottom
				borderWidth: 3; 
				add: (self newLabel label: '<meta+b> filters for Classes');
				add: (self newLabel label: '<meta+m> filters for Implementors');
				add: (self newLabel label: '<meta+p> filters for Packages');
				add: (self newLabel label: '<shift + enter> opens Finder');
				add: (self newButton 
					label: 'Dismiss';
					action: [ popover dismiss ];
					yourself);
				yourself);
			yourself);
		popup