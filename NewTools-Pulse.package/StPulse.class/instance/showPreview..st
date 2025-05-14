private - actions
showPreview: aPresenter

	previewContainer removeAll.
	aPresenter  
		ifNil: [ ^ self ].
	aPresenter ifNotNil: [ :value |
		value spotterPreview ifNotNil: [ :previewPresenter |
			previewContainer add: (previewPresenter
				addStyle: 'stPulsePreview' ;
				owner: self;
				yourself) ] ]