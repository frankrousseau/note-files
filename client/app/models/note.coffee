module.exports = class NoteModel extends Backbone.Model
    urlRoot: "notes/"

    initialize: ->
        path = JSON.parse @get('path')
        @set 'fullPath', path.join('>')
