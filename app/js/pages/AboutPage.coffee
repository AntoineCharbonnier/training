BasePage = require '../BasePage'

class AboutPage extends BasePage
  constructor: () ->
    @container = '.about'
    
    super @container
    @animationClass = new (require './animations/AboutAnimationPage')(@container)

    console.log '[AboutPage]'
    


  show: ->
    super()
    console.log 'AboutPage:show'

  hide: ->
    super()


module.exports= AboutPage