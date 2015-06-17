{CompositeDisposable} = require 'atom'

module.exports =
  consumeStatusBar: (statusBar) ->
    @observeEditors()
    CursorIndicatorView = require './cursor-indicator-view'
    @view = new CursorIndicatorView()
    @view.initialize()
    @tile = statusBar.addLeftTile
      item: @view
      priority: 10

  deactivate: ->
    @osberver?.dispose()
    @observer = null if @observer
    @view?.destroy()
    @view = null if @view
    @tile?.destroy()
    @tile = null if @tile

  observeEditors: ->
    @observer = atom.workspace.observeTextEditors (editor) =>
      disposables = new CompositeDisposable
      disposables.add editor.onDidRemoveCursor => @view?.update editor
      disposables.add editor.observeCursors => @view?.update editor
      editor.onDidDestroy -> disposables.dispose()
