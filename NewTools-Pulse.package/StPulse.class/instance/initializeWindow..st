initialization
initializeWindow: aWindowPresenter
	

	aWindowPresenter 
		title: 'Pulse';
		withoutDecorations;
		"windowIcon: self windowIcon;"
		initialExtent: 900@500;
		whenClosedDo: [
			self windowClosed. 
			self class windowClosed ];
		centered.
	self addProcessors: aWindowPresenter