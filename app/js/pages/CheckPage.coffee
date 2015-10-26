BasePage = require '../BasePage'

class CheckPage extends BasePage
  constructor: () ->
    @container = '.check'
    
    super @container
    @animationClass = new (require './animations/CheckAnimationPage')(@container)

    console.log '[CheckPage]'
    


  show: ->
    super()
    console.log 'CheckPage:show'

  hide: ->
    super()


module.exports= CheckPage