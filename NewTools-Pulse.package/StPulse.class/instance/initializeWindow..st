initialization
initializeWindow: aWindowPresenter
	
	aWindowPresenter 
		initialExtent: self class defaultExtent;
		withoutDecorations;
		whenClosedDo: [ 
			self windowClosed.
			self class windowClosed ];
		centered.
		
	self addProcessors: aWindowPresenter