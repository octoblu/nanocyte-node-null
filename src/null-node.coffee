class NullNode
  constructor: (@config={}, @data={}) ->
  onMessage:(message, callback=->)=>
    key = @config.value
    return callback null, message ? message[key]
    callback null

module.exports = NullNode
