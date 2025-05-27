initialization
addPreviewPanelTo: contentsLayout

	contentsLayout 	add: (previewContainer := 
		SpBoxLayout newTopToBottom).
	listPresenter whenSelectionChangedDo: [ :selection | 
		self showPreview: selection selectedItem ]