layout
defaultLayout

	| contentsLayout result |

	result := SpBoxLayout newVertical
		add: searchPresenter expand: false;
		add: (SpOverlayLayout new 
			"child: resultListPresenter;"
			child: ((contentsLayout := SpBoxLayout newLeftToRight)
				add: ((tabLayout := SpTabLayout new) 
					add: resultListPresenter label: 'Environment';
					add: editorListPresenter label: 'Windows';
					add: toolListPresenter label: 'Commands';
					whenTabSelectedDo: [ :ann | self tabActivated: ann presenter ];
					yourself);
				yourself);
			addOverlay: emptyPresenter withConstraints: [ :c | c vAlignCenter; hAlignCenter ];
		yourself).
		
	self isShowingPreview ifTrue: [ self addPreviewPanelTo: contentsLayout ].
	^ result	