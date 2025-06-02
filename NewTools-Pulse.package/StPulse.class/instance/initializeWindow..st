initialization
initializeWindow: aWindowPresenter
	

	aWindowPresenter 
		title: 'Pulse';
		withoutDecorations;
		windowIcon: self windowIcon;
		initialExtent: self preferredExtent ;
		whenClosedDo: [ 
			self windowClosed. 
			self class windowClosed ];
		whenResizingDo: [ :ann | self preferredExtent: ann newSize ];
		centered.
	self addProcessors: aWindowPresenter