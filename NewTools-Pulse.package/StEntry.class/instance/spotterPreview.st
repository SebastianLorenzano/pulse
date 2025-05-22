accessing
spotterPreview

	^ (self content spotterPreview: SpPresenterBuilder new)
		addStyle: 'stSpotterPreview';
		yourself