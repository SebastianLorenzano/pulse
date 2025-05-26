initialization
initializePaginator

	self addToMillerList: environmentListPresenter.
	self addToMillerList: editorListPresenter.
	self addToMillerList: toolListPresenter.
	
	paginator whenSelectedPageChangedDo: [ :newValue |
		| newActivePresenter | 
		newActivePresenter := paginator pages at: newValue.
		activePresenter ifNotNil: [ 
				self application defer: [ 
					self haltOnce.
					listLayout 
						replace: activePresenter 
						with: newActivePresenter
						withConstraints: ( listLayout constraintsFor: activePresenter )  ] ].
		activePresenter := newActivePresenter.	
		self updateListLabel ].

	self application defer: [ 
		paginator selectPage: (self class tabIndexToOpenAtStart) ]
		