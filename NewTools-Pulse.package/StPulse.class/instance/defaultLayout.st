layout
defaultLayout

    | contentsLayout result |

    result := SpBoxLayout newVertical
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
								add: listPresenter expand: true;
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
		yourself.
    self isShowingPreview ifTrue: [ self addPreviewPanelTo: contentsLayout ].
    ^ result