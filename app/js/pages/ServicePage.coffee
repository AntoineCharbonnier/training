BasePage = require '../BasePage'

class ServicePage extends BasePage
  constructor: () ->
    @container = '.service'

    super @container

    @animationClass = new (require './animations/ServiceAnimationPage')(@container)

    console.log '[ServicePage]'
    


  show: ->
    super()

    console.log 'ServicePage:show'

  hide: ->
    super()


module.exports= ServicePage