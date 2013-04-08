module.export = (compound, Note) ->
    Note.all = (callback) -> Note.request 'all', callback
