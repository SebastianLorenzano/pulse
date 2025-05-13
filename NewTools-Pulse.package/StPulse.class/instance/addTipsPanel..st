layout
addTipsPanel: aLayout

	^ (SpBoxLayout newTopToBottom
		add: aLayout ;
		add: (SpBoxLayout newLeftToRight
			vAlignCenter ;
			addLast: (SpBoxLayout newLeftToRight
				vAlign: SpLayoutWidgetAlignment 
					end ;
					add: helpButton expand: false;
					yourself)
			 	
			 	yourself)
			expand: false ;
			yourself)