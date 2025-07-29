visiting
visitClassEntry: aClassEntry 
	
	self notifyActivateEntity: (PvClassModel 
		newEnvironment: self model environmentModel
		entity: aClassEntry content)