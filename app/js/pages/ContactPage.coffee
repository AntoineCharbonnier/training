BasePage = require '../BasePage'

class ContactPage extends BasePage
  constructor: () ->
    @container = '.contact'
    
    super @container
    @animationClass = new (require './animations/ContactAnimationPage')(@container)

    console.log '[ContactPage]'
    


  show: ->
    super()
    console.log 'ContactPage:show'

  hide: ->
    super()


module.exports= ContactPage