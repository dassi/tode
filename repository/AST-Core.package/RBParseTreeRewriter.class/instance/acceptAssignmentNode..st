visitor-double dispatching
acceptAssignmentNode: anAssignmentNode 
	anAssignmentNode variable: (self visitNode: anAssignmentNode variable).
	anAssignmentNode value: (self visitNode: anAssignmentNode value)