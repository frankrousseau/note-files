View = require '../lib/view'

module.exports = class NoteView extends View
    template: require './templates/note'
    className: 'note'

    afterRender: ->
        attachments = @model.get '_attachments'
        @$el.append '<ul>'
        for name, bla of attachments
            @$el.append "<li><a href='notes/#{@model.get 'id'}/files/#{name}'>#{name}</a></li>"
        @$el.append '</ul>'
