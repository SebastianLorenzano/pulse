initialization
initializePaginator

	paginator := SpPaginatorPresenter new
		visiblePages: 1 ;
		withoutResizingEdges ;
		yourself.

	self addToPaginator: self environmentContext.
	self addToPaginator: self windowsContext.
	self addToPaginator: self toolsContext.
	
	paginator selectPage: (self class tabIndexToOpenAtStart)