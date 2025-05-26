initialization
initializePaginator

	self addToMillerList: environmentListPresenter.
	self addToMillerList: editorListPresenter.
	self addToMillerList: toolListPresenter.
	
	paginator whenSelectedPageChangedDo: [ :newValue |
		self updateActivePresenter: newValue ].

	self application defer: [
		paginator selectPage: (self class tabIndexToOpenAtStart) ]