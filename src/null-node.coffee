_ = require 'lodash'
class NullNode
  constructor: (@config={}, @data={}) ->
  onMessage:(message, callback=->)=>
    return callback null, message if _.isNull(@config.value) ^ @config.not;
    callback null

module.exports = NullNode
