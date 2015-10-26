class BaseManager

  _animationClass: null
  _shown         : false

  constructor: ->
    # @_animationClass = new @_animationClass(@container) if @_animationClass?

  bindEvents: ->
    
  # show:(callback=null) ->
  #   @_animationClass.show(callback) if @_animationClass?

  # hide:(callback=null) ->
  #   @_animationClass.hide(callback) if @_animationClass?

  # isShown: ->
  #   @_shown

  remove: ->
    delete @

module.exports = BaseManager