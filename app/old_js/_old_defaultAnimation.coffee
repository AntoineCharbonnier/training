class DefaultAnimation

  _duration:0

  constructor: (@container) ->
    @containerElement = $(@container)
    @_duration = 0.8

  show: ->
    @containerElement.css "opacity", 0
    @containerElement.removeClass 'hide'
    TweenMax.to @containerElement, @_duration,
      css:
        alpha: 1
      ease:Linear.easeOut

  hide: (doneCallback)->
    console.log doneCallback
    TweenMax.to @containerElement, @_duration,
      css:
        alpha: 0
      ease:Linear.easeIn
      onComplete: =>
        @containerElement.addClass 'hide'
        doneCallback() if doneCallback?
  

module.exports = DefaultAnimation