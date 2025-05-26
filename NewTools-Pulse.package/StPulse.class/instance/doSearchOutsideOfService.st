private
doSearchOutsideOfService

	lastSearchText := searchPresenter text. 
	waitingSearchText := searchPresenter text.
	
	self doSearch: waitingSearchText