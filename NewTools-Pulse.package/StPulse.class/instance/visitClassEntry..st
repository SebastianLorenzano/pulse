visiting
visitClassEntry: aClassEntry 

	aClassEntry content ifNil: [ ^ self ].
	self systemNavigation browse: aClassEntry content