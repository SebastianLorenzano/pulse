initialization
initializePaginator

	paginator := SpPaginatorPresenter new
		visiblePages: 1 ;
		withoutResizingEdges ;
		yourself.

	self addToMillerList: environmentListPresenter.
	self addToMillerList: editorListPresenter.
	self addToMillerList: toolListPresenter.
	
		paginator selectPage: (self class tabIndexToOpenAtStart).