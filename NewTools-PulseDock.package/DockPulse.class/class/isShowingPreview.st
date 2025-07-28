testing
isShowingPreview

	^ PreviewVisible ifNil: 
		[ PreviewVisible := true ]