project
projectpull
  "
  project pull [--remote=<git-remote-name>] ( <project-name> | @<project-reference> )
"

  | remote projectName registration |
  self getSubcommandOptsMixedLongShort: {#('remote' nil #'required')}.
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument ( <project-name> | @<project-reference> ). See `man project pull` for more details' ].
  registration := self resolveProjectRegistrationReference: projectName.
  registration hasGitRepository
    ifFalse: [ 
      self
        error:
          'The `project pull` command can only be used with projects in git repositories' ].
  options
    at: 'remote'
    ifPresent: [ :remoteName | remote := remoteName ]
    ifAbsent: [ remote := registration gitRemoteName ].
  ^ self projectPull: registration remoteName: remote