initialization
initializeWindow: aWindowPresenter
	
	aWindowPresenter 
		withoutDecorations;
		whenClosedDo: [ 
			self windowClosed.
			self class windowClosed ];
		centered;
		initialExtent: self class preferredExtent;
		windowIcon: self windowIcon;
		whenResizingDo: [ :ann | self preferredExtent: ann newSize ].		
		
	self addProcessors: aWindowPresenter