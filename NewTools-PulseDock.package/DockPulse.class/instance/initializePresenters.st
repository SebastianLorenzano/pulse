initialization
initializePresenters

	"self initializePaginator."
	self initializeButtons.
	self initializeListLabel.
	spinner := (self instantiate: StPulseLoadingPresenter).
	spinner hide.
	
	emptyPresenter := self newLabel 
		label: 'No results yet...';
		visible: false;
		yourself.
	searchPresenter := self newSearchInput.
	resultListPresenter := self newResultList.
	editorListPresenter := self newResultList.
	toolListPresenter := self newResultList.
	helpPresenter := (SpPresenter new
			layout: (SpGridLayout new
				beColumnNotHomogeneous;
				column: 2 expand: false;
				build: [ :builder | self class tips do: [ :each |
						builder add: each key ; add: each value ; nextRow ] ]
				yourself) ;
			yourself).
	self addStyles