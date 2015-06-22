CursorIndicator = require '../lib/cursor-indicator'

describe 'CursorIndicator', ->
  [tile, view, editor] = []

  beforeEach ->
    workspaceElement = atom.views.getView(atom.workspace)
    jasmine.attachToDOM(workspaceElement)
    waitsForPromise -> atom.packages.activatePackage('status-bar')
    waitsForPromise -> atom.packages.activatePackage('cursor-indicator')
    waitsForPromise -> atom.workspace.open('files/test.txt')

    runs ->
      [tile, view, editor] = [
        CursorIndicator.tile
        CursorIndicator.view
        atom.workspace.getActiveTextEditor()
      ]
      editor.setCursorBufferPosition([0, 0])

  describe 'after initialization', ->
    it 'tile is in the status bar', ->
      expect(tile).toBeDefined()
      expect(view).toBeDefined()
      expect(editor).toBeDefined()

  describe 'when cursors are added', ->
    it 'shows cursor indicator', ->
      editor.addSelectionBelow()
      expect(view.textContent).toEqual('|2')
      editor.addSelectionBelow()
      expect(view.textContent).toEqual('|3')
      editor.selectAll()
      expect(view.textContent).toEqual('')

  describe 'deactivate', ->
    it 'removes the tile', ->
      expect(CursorIndicator.tile).toBeDefined()
      atom.packages.deactivatePackage('cursor-indicator')
      expect(CursorIndicator.tile).toBeNull()

    it 'can be executed twice', ->
      atom.packages.deactivatePackage('cursor-indicator')
      atom.packages.deactivatePackage('cursor-indicator')
