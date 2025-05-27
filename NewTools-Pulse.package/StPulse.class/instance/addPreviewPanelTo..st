initialization
addPreviewPanelTo: contentsLayout

	contentsLayout 	add: (previewContainer := 
		SpBoxLayout newTopToBottom).
	activePresenter whenSelectionChangedDo: [ :selection | 
		self showPreview: selection selectedItem ]