initialization
newStepImage: step

	^ self newImage 
		image: (self iconAt: step + 1);
		yourself