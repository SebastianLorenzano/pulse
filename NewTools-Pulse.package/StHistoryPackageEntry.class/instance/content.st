accessing
content 

	^ PackageOrganizer default 
		packageNamed: contentName
		ifAbsent: [ ^ nil ]