private - actions
doSearchOutsideOfService

	lastSearchText := searchPresenter text. 
	waitingSearchText := searchPresenter text.
	self ensurePulseService.
	self doSearch: waitingSearchText.
	self processFullAddedCandidates