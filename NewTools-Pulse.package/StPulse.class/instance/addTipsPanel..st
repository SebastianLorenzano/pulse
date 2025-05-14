layout
addTipsPanel: aLayout

	^ (SpBoxLayout newTopToBottom
		add: aLayout ;
		add: (SpBoxLayout newLeftToRight
				vAlignCenter ;
				addLast: (SpBoxLayout newLeftToRight
					vAlignEnd ;
					add: helpButton expand: false;
					yourself)
				 yourself)
			expand: false ;
		yourself)