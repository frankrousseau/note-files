View      = require '../lib/view'
AppRouter = require '../routers/app_router'
NotesView = require './notes'

module.exports = class AppView extends View
    el: 'body.application'

    template: ->
        require('./templates/home')

    initialize: ->
        @router = CozyApp.Routers.AppRouter = new AppRouter()

    afterRender: ->
        @notesView = new NotesView el: $('#notes')
        @notesView.collection.fetch()
