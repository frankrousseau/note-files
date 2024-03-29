action 'all', ->
    Note.all (err, notes) -> unless err then send notes else send 500

action 'file', ->
    Note.find params.id, (err, note) ->
        note.getFile params.name, (err, response, body) ->
            if err
                send 500
            else
                send 200
        .pipe res
