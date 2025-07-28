layout
defaultLayout
    | contentsLayout result |
	"Spinner should always be added after findAllButtonLayout or the invisible presenter findAllButtonLayout uses will cover spinner"
	result := SpOverlayLayout new
		addOverlay: spinner withConstraints: [ :c | c vAlignEnd; hAlignStart ];
		addOverlay: buttonsToolbar withConstraints: [ :c | c vAlignEnd ; hAlignEnd ];
		addOverlay: emptyPresenter withConstraints: [ :c | c vAlignCenter; hAlignCenter ];
		child: (SpBoxLayout newTopToBottom 
			add: searchPresenter expand: false;
			add: (contentsLayout := SpBoxLayout newLeftToRight
				add: (SpBoxLayout newTopToBottom
					add: listTitleLayout expand: false;
					add: listPresenter;
					yourself);
				yourself);
			"add: (SpBoxLayout newTopToBottom 
					hAlignCenter;
					vAlignStart;
					add: paginator;
					yourself)
				expand: false;"
			yourself);
		yourself.
		
	self isShowingPreview ifTrue: [ 
		self addPreviewPanelTo: contentsLayout ].
    ^ result