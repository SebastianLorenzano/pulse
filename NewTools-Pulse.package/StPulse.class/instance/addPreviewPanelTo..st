initialization
addPreviewPanelTo: contentsLayout

	contentsLayout 	add: (previewContainer := 
		SpBoxLayout newTopToBottom).
	environmentListPresenter whenSelectionChangedDo: [ :selection | 
		activePresenter = environmentListPresenter
			ifTrue: [ self showPreview: selection selectedItem ] ].
	editorListPresenter whenSelectionChangedDo: [ :selection | 
		activePresenter = editorListPresenter
			ifTrue: [ self showPreview: selection selectedItem ] ].
	toolListPresenter whenSelectionChangedDo: [ :selection | 
		activePresenter = toolListPresenter
			ifTrue: [ self showPreview: selection selectedItem ] ]