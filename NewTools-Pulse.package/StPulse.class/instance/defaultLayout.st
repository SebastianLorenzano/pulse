layout
defaultLayout

    | contentsLayout result |

    result := SpBoxLayout newVertical
			add: searchPresenter expand: false;
			add: (SpOverlayLayout new 
				addOverlay: helpButton withConstraints: [ :c | c vAlignEnd; hAlignEnd ];
				child: ((contentsLayout := SpBoxLayout newLeftToRight)
					add: (SpOverlayLayout new
						addOverlay: emptyPresenter withConstraints: [ :c | c vAlignCenter; hAlignCenter ] ;
  						child: (self newPresenter
							addStyle: 'stPulseList' ;
							layout: ((listLayout := SpBoxLayout newTopToBottom)
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
     			yourself);
			add: (SpBoxLayout newLeftToRight 
					hAlignCenter;
					add: paginator;
					yourself) 
				expand: false ;
			yourself.

    self isShowingPreview ifTrue: [ self addPreviewPanelTo: contentsLayout ].

    ^ result