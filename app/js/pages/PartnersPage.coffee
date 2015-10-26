BasePage = require '../BasePage'

class PartnersPage extends BasePage
  constructor: () ->
    @container = '.partners'
    
    super @container
    @animationClass = new (require './animations/PartnersAnimationPage')(@container)

    console.log '[PartnersPage]'
    


  show: ->
    super()

  hide: ->
    super()

module.exports= PartnersPage