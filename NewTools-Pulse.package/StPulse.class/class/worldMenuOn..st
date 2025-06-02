world menu
worldMenuOn: aBuilder
	<worldMenu>
	
	(aBuilder item: #Pulse)
		parent: #NewToolsMenu ;
		keyText: 'Shift + Enter';
		label: 'Pulse' ;
		order: 5 ;
		iconName: #smallFind ;
		help: 'Search tool to explore Pharo system effectively.' ;
		action: [ self open ]