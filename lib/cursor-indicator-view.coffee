{CompositeDisposable} = require 'atom'

class CursorIndicatorView extends HTMLElement
  initialize: ->
    @classList.add 'inline-block'
    @classList.add 'cursor-indicator'
    @createEventHandlers()
    @update()

  destroy: ->
    @disposables?.dispose()
    @disposables = null if @disposables

  update: (editor = atom.workspace.getActiveTextEditor()) ->
    len = editor?.getCursors().length
    if len > 1
      @textContent = "|#{len}"
      @style.display = 'inline-block'
    else
      @textContent = ''
      @style.display = 'none'

  createEventHandlers: ->
    @disposables = new CompositeDisposable
    @createActivePaneHandler()

  createActivePaneHandler: ->
    @disposables.add atom.workspace.onDidChangeActivePaneItem => @update()

module.exports = CursorIndicatorView =
  document.registerElement 'cursor-indicator-view',
    prototype: CursorIndicatorView.prototype
