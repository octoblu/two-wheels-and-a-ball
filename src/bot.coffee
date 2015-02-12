class Bot
  constructor: (@bearing, @velocity) ->

  toMessage: =>
    left: 1500 - (500 * @velocity)
    right: 1500 + (500 * @velocity)

module.exports = Bot
