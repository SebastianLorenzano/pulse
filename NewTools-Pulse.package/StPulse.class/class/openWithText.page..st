instance creation
openWithText: aText page: index
"If a Spotter is already open, it closes itself and opens the Finder instead.  
 Otherwise, it initializes a new Spotter. The purpose of this is so users can 
 press 'shift+enter' inside the Spotter to open the Finder."
   | searchText |

	pulse ifNotNil: [
		pulse isVisible ifTrue: [
			searchText := pulse searchPresenter text.
			self reset.
			^ StFinderPresenter openWithText: searchText ] ].
	
	pulse := self newWithText: aText asString.
	pulse selectPage: index.
	^ pulse openModal