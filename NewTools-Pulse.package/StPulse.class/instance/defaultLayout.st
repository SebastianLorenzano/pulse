layout
defaultLayout

    | contentsLayout result |

    result := SpBoxLayout newVertical
        add: searchPresenter expand: false;
            add: (SpOverlayLayout new 
                child: ((contentsLayout := SpBoxLayout newLeftToRight)
                    add: (SpOverlayLayout new
                        addOverlay: emptyPresenter withConstraints: [ :c | c vAlignCenter; hAlignCenter ] ;
                        yourself ;
                        child: (self newPresenter
                            addStyle: 'stPulseList' ;
                            layout: (listLayout := SpBoxLayout newTopToBottom
											add: (SpBoxLayout newLeftToRight 
												hAlignCenter;
												add: listLabel ;
												yourself) 
											expand: false ;
											add: activePresenter expand: true;
										yourself)
                            yourself)
                        yourself)
                    yourself);
                addOverlay: helpButton withConstraints: [ :c | c vAlignEnd; hAlignEnd ];
                yourself) ;
			add: (SpBoxLayout newLeftToRight 
				hAlignCenter;
				add: paginator;
				yourself) 
			expand: false ;
			yourself.
    self isShowingPreview ifTrue: [ self addPreviewPanelTo: contentsLayout ].
    ^ result