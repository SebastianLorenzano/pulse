initialization
addPreviewPanelTo: contentsLayout

	contentsLayout 	add: (previewContainer := SpBoxLayout newTopToBottom).
	resultListPresenter whenSelectionChangedDo: [ :selection | 
		self showPreview: selection selectedItem ].
	editorListPresenter whenSelectionChangedDo: [ :selection | 
		self showPreview: selection selectedItem ].
	toolListPresenter whenSelectionChangedDo: [ :selection | 
		self showPreview: selection selectedItem ]
	