instance creation
openWithText: aText
"If a Spotter is already open, it closes itself and opens the Finder instead.  
 Otherwise, it initializes a new Spotter. The purpose of this is so users can 
 press 'shift+enter' inside the Spotter to open the Finder."
   
	^ self openWithText: aText page: self defaultInitialPageIndex