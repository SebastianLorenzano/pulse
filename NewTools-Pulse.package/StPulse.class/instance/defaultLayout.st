layout
defaultLayout
    | contentsLayout result |

	result := SpOverlayLayout new
		addOverlay: spinner withConstraints: [ :c | c vAlignEnd; hAlignStart ];
		addOverlay: buttonsToolbar withConstraints: [ :c | c vAlignEnd ; hAlignEnd ];
		addOverlay: emptyPresenter withConstraints: [ :c | c vAlignCenter; hAlignCenter ];
		child: (SpBoxLayout newTopToBottom 
			add: searchPresenter expand: false;
			add: (contentsLayout := SpBoxLayout newLeftToRight
				add: (SpBoxLayout newTopToBottom
					add: listLabelPresenter expand: false;
					add: listPresenter;
					yourself);
				yourself);
			add: (SpBoxLayout newTopToBottom 
					hAlignCenter;
					vAlignStart;
					add: paginator;
					yourself)
				expand: false;
			yourself);
		yourself.
		
	self isShowingPreview ifTrue: [ 
		self addPreviewPanelTo: contentsLayout ].
	
    "result := SpBoxLayout newTopToBottom
			borderWidth: 15;
			add: searchPresenter expand: false;
			add:((contentsLayout := SpBoxLayout newLeftToRight)
				add: (SpOverlayLayout new
					addOverlay: emptyPresenter withConstraints: [ :c | c vAlignCenter; hAlignCenter ] ;
  						child: (self newPresenter
						addStyle: 'stPulseList' ;
						layout: (SpBoxLayout newTopToBottom
							add: (SpBoxLayout newLeftToRight 
									hAlignCenter;
									add: listLabel;
									yourself) 
								expand: false;
							add: listPresenter;
							yourself);
						yourself);
					yourself);	
      				yourself);
			add: (self newPresenter
				addStyle: 'stPulsePaginatorLayout';
				layout: (SpOverlayLayout new 
					addOverlay: spinner withConstraints: [ :c | c vAlignStart; hAlignStart ];
					addOverlay: buttonsToolbar withConstraints: [ :c | c vAlignEnd ; hAlignEnd ];
					child: (SpBoxLayout newTopToBottom 
						hAlignCenter;
						vAlignCenter;
						add: paginator
						expand: false ;
						yourself) ;
					yourself) ;
				yourself)
			expand: false;
			yourself ;
		yourself."

    ^ result