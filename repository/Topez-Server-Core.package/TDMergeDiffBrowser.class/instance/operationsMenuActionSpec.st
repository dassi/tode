menu action specs
operationsMenuActionSpec
  ^ {#('copy to' nil #'copyOperationToMenuAction:selectionIndex:').
  #('move to' nil #'moveOperationToMenuAction:selectionIndex:').
  #('-').
  #('view default' nil #'viewDefaultMenuAction:selectionIndex:').
  #('-').
  #('view ancestor' nil #'viewAncestorMenuAction:selectionIndex:').
  #('view us' nil #'viewUsMenuAction:selectionIndex:').
  #('view them' nil #'viewThemMenuAction:selectionIndex:').
  #('view custom' nil #'viewCustomMenuAction:selectionIndex:').
  #('-').
  #('view ancestor vs us' nil #'viewAncestorVsUsMenuAction:selectionIndex:').
  #('view ancestor vs them' nil #'viewAncestorVsThemMenuAction:selectionIndex:').
  #('view ancestor vs custom' nil #'viewAncestorVsCustomMenuAction:selectionIndex:').
  #('-').
  #('view us vs them' nil #'viewUsVsThemMenuAction:selectionIndex:').
  #('view us vs custom' nil #'viewUsVsCustomMenuAction:selectionIndex:').
  #('-').
  #('view them vs us' nil #'viewThemVsUsMenuAction:selectionIndex:').
  #('view them vs custom' nil #'viewThemVsCustomMenuAction:selectionIndex:').
  #('-').
  #('view image vs us' nil #'viewImageVsUsMenuAction:selectionIndex:').
  #('view image vs them' nil #'viewImageVsThemMenuAction:selectionIndex:').
  #('view image vs custom' nil #'viewImageVsCustomMenuAction:selectionIndex:').
  #('-').
  #('show unresolved' nil #'showUnresolvedMenuAction:selectionIndex:').
  #('show all' nil #'showAllMenuAction:selectionIndex:').
  #('show raw' nil #'showRawMenuAction:selectionIndex:').
  #('-').
  #('tag' nil #'tagMenuAction:selectionIndex:').
  #('untag' nil #'untagMenuAction:selectionIndex:').
  #('show tagged' nil #'showTagsMenuAction:selectionIndex:').
  #('-').
  #('choose ancestor' $a #'selectAncestorMenuAction:selectionIndex:').
  #('choose us' $u #'selectUsMenuAction:selectionIndex:').
  #('choose them' $t #'selectThemMenuAction:selectionIndex:').
  #('choose custom' $c #'selectCustomMenuAction:selectionIndex:').
  #('choose delete' $d #'selectDeleteMenuAction:selectionIndex:').
  #('-').
  #('do merge' $j #'doMergeMenuAction:selectionIndex:')}