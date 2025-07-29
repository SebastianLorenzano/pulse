initialization
initializeWindow: aWindowPresenter
	
	super initializeWindow: aWindowPresenter.
	aWindowPresenter 
		title: 'Pulse';
		withoutDecorations;
		windowIcon: self windowIcon;
		initialExtent: self preferredExtent;
		"Force focus to be on the defaultKeyboardFocus presenter. This is needed because for some reason, the windows is trying to assign the focus before the DOM is completed, which in turn makes it so the focus is taken after being assigned"
		whenOpenedDo: [ self defaultKeyboardFocus takeKeyboardFocus ];
		whenClosedDo: [ 
			self windowClosed. 
			self class windowClosed ];
		whenResizingDo: [ :ann | self preferredExtent: ann newSize ];
		centered.
	self addProcessors: aWindowPresenter