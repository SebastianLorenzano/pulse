layout
defaultLayout

	^ SpBoxLayout newVertical
		add: searchPresenter expand: false;
		add: (SpOverlayLayout new 
			"child: resultListPresenter;"
			child: ((tabLayout := SpTabLayout new) 
				add: resultListPresenter label: 'Environment';
				add: editorListPresenter label: 'Windows';
				add: toolListPresenter label: 'Commands';
				whenTabSelectedDo: [ :ann | self tabActivated: ann presenter ];
				yourself);
			addOverlay: emptyPresenter withConstraints: [ :c | c vAlignCenter; hAlignCenter ];
			yourself);
		yourself