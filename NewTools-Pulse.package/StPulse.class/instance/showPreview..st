private - actions
showPreview: aPresenter

	| aux |

	previewContainer removeAll.
	(aPresenter isNil "or: [ aPresenter isHeader ]") ifTrue: [ ^ self ].

	aPresenter ifNotNil: [ :value |
		self haltOnce.
		value spotterPreview ifNotNil: [ :previewPresenter |
			previewContainer add: (previewPresenter
				owner: self;
				yourself) ] ]