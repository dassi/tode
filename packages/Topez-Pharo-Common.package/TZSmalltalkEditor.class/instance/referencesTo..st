menu messages
referencesTo: aVariableOrClassName
    "Open a references browser on the given symbol"

    | list |
    self halt.

    list := self topez referencesTo: aVariableOrClassName isMeta: self model sourceElement isMeta in: self model sourceElement proxyClass.
    self topez
        editList: list
        label: 'References to ' , aVariableOrClassName
        inWindow: (self topez windowIdNamed: #'messages')
        at: 'implementors'