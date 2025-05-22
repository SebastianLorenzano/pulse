private - updating
updateSearchFromProcessor: aProcessor

	searchPresenter text: aProcessor query textInSearchBar.
	searchPresenter cursorPositionIndex: searchPresenter text size + 1.
	tabLayout select: environmentListPresenter