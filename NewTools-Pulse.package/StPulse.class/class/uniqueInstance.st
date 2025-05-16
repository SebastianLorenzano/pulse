instance creation
uniqueInstance
	
	<script>
	^ UniqueInstance ifNil: [
		UniqueInstance := super new ]