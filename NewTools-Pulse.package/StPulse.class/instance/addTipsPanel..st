initialization
addTipsPanel: aLayout

	 ^ (SpBoxLayout newTopToBottom
			 add: aLayout;
			 add: (SpBoxLayout newLeftToRight
					  vAlignCenter;
					  borderWidth: 3;
					  spacing: 3;
					  addLast: (SpBoxLayout newLeftToRight
							   vAlign: SpLayoutWidgetAlignment start;
							   borderWidth: 3;
							   spacing: 3;
							   add: (self newImage
									    image: (self application iconNamed: #smallFind);
									    action: [ "self openFinder" ];
									    yourself)
							   expand: false);
					  addLast: (SpBoxLayout newTopToBottom
							   borderWidth: 3;
							   vAlign: SpLayoutWidgetAlignment end;
							   add: (self newLink
									    label: 'Finder...';
									    action: [ "self openFinder" ];
									    help: 'Open the Finder tool (Shift + Return).';
									    yourself);
							   yourself)
					  expand: false;
					  yourself)
			 expand: false;
			 yourself)