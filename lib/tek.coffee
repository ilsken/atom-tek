{CompositeDisposable} = require 'atom'

module.exports = Tek =
  config:
    customFileTypesGlob:
      title: 'Custom Tek File Associations'
      description: 'Map of scope names to globs'
      type: 'array'
      items:
        type: 'object'
        additionalProperties:
          type: 'array'
          items:
            type: 'string'
      uniqueItems: true

    useGitIgnore:
      title: 'Use .gitignore'
      description: 'If enabled, Tek will honor the .gitignore file located in the current repo'
      type: 'boolean'
      default: true


  subscriptions: null

  activate: (state) ->

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
  deactivate: ->
    @subscriptions.dispose()
