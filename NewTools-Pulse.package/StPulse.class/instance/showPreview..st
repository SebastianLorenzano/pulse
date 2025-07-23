private - actions
showPreview: aPresenter

	previewContainer removeAll.
	aPresenter ifNil: [ ^ self ].
	aPresenter spotterPreview ifNotNil: [ :previewPresenter |
		self addKeyboardBehavior: previewPresenter. 
		previewContainer add: (previewPresenter
			owner: self;
			yourself) ] 