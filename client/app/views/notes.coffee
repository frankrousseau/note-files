CollectionView = require '../lib/view_collection'
NotesCollection = require '../collections/notes'
NoteView = require './note'

module.exports = class NotesView extends CollectionView
    id: 'notes'

    collection: new NotesCollection()
    view: NoteView

    initialize: ->
        @collection.on 'reset', =>
            @renderAll()
