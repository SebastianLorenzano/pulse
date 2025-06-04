initialization
initializeWindow: aWindowPresenter

	aWindowPresenter 
		title: 'Pulse';
		withoutDecorations;
		"windowIcon: self windowIcon;"
		initialExtent: 900@600;
		whenResizingDo: [ :ann | 'RES' crTrace ];
		whenClosedDo: [
			self windowClosed. 
			self class windowClosed ];
		centered.
	self addProcessors: aWindowPresenter