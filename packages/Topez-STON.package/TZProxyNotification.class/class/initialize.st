class initialization
initialize
    "self initialize"

    super initialize.
    self printBlocks
        at: #'basic'
        put: [ :proxy :aStream :indent | 
            proxy header printOn: aStream.
            (proxy stack indexed at: 1) printOn: aStream ]