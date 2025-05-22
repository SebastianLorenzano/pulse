comparing
= anEntry

	^ self species = anEntry species
		and: [ anEntry asString = self asString ]