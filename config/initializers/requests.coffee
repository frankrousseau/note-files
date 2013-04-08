module.exports = (compound) ->
    {Note} = compound.models

    map = -> emit doc.path, doc
    Note.defineRequest 'all', map, (err) -> console.log 'Error' if err

