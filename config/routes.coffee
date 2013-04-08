exports.routes = (map) ->
    map.get 'notes/', 'notes#all'
    map.get 'notes/:id/files/:name', 'notes#file'
