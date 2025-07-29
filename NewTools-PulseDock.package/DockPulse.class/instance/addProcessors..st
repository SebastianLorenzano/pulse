initialization
addProcessors: aWindowPresenter

	(self model processorsForContext: self environmentContext) do: [ :each | 
		each new
		installKeymappingsOn: aWindowPresenter
			onExecution: [ :aProcessor | self updateSearchFromProcessor: aProcessor ] ].
	
	(self model processorsForContext: self windowsContext) do: [ :each | 
		each new
		installKeymappingsOn: aWindowPresenter
			onExecution: [ :aProcessor | self updateSearchFromProcessor: aProcessor ] ].
		
	(self model processorsForContext: self toolsContext) do: [ :each | 
		each new
		installKeymappingsOn: aWindowPresenter
			onExecution: [ :aProcessor | self updateSearchFromProcessor: aProcessor ] ]