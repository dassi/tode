as yet unclassified
createMockClass
  ((System stoneVersionAt: 'gsVersion') beginsWith: '2.')
    ifTrue: [ 
      ^ Object
        subclass: self mockClassName
        instVarNames: #()
        classVars: #()
        classInstVars: #()
        poolDictionaries: #()
        inDictionary: ''
        category: self mockClassCategory ]
    ifFalse: [ 
      ^ Object
        subclass: self mockClassName
        instVarNames: #()
        classVars: #()
        classInstVars: #()
        poolDictionaries: #()
        inDictionary: ''
        category: self mockClassCategory
        options: #() ]