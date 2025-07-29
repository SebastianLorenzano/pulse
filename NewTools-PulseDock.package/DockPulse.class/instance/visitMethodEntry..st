visiting
visitMethodEntry: aClassEntry 
	
	self notifyActivateEntity: (PvMethodModel 
		newEnvironment: self model environmentModel
		entity: aClassEntry content)