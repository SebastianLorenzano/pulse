layout
defaultLayout

	| contentsLayout result |

	result := SpBoxLayout newVertical
		add: searchPresenter expand: false;
			add: ((contentsLayout := SpBoxLayout newLeftToRight)
				add: (SpOverlayLayout 
					new
					addOverlay: emptyPresenter withConstraints: [ :c | c vAlignCenter; hAlignCenter ] ;
					yourself ;
					child: (self newPresenter 
						addStyle: 'stPulseList' ;
						layout: ((tabLayout := SpTabLayout new) 
							add: resultListPresenter label: 'Environment';
							add: editorListPresenter label: 'Windows';
							add: toolListPresenter label: 'Commands';
							whenTabSelectedDo: [ :ann | self tabActivated: ann presenter ] ;
							yourself)
						yourself)
					yourself)
				yourself).
	self isShowingPreview ifTrue: [ self addPreviewPanelTo: contentsLayout ].
	result := self addTipsPanel: result.
	^ result