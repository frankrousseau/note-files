module.exports = class View extends Backbone.View

    template: ->

    initialize: ->
        @render()

    getRenderData: ->
        data = model: @model?.toJSON()
        if model?
            console.log 'model' + model
        console.log 'data' +  data
        data

    render: ->
        @beforeRender()
        @$el.html @template @getRenderData()
        @afterRender()
        @

    beforeRender: ->

    afterRender: ->

    destroy: ->
        @undelegateEvents()
        @$el.removeData().unbind()
        @remove()
        Backbone.View::remove.call @
