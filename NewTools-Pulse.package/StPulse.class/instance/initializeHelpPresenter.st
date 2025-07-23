initialization
initializeHelpPresenter

	helpPresenter := (SpPresenter new
			layout: (SpGridLayout new
				beColumnNotHomogeneous ;
				column: 2 expand: false ;
				build: [ :builder | self class tips do: [ :each |
						builder add: each key ; add: each value ; nextRow ] ]
				yourself) ;
			yourself)