initialization
initializePaginator

	paginator := SpPaginatorPresenter new
		addStyle: 'stPulsePaginator';
		visiblePages: 1;
		withoutResizingEdges;
		yourself.

	self addToPaginator: self environmentContext.
	self addToPaginator: self windowsContext.
	self addToPaginator: self toolsContext.