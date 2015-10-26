BasePage = require '../BasePage'

class IntroductionPage extends BasePage
  constructor: () ->
    @container = '.introduction'

    super @container

    @animationClass = new (require './animations/IntroductionAnimationPage')(@container)

    console.log '[IntroductionPage]'
    


  show: ->
    super()


  hide: ->

    super()

    

module.exports = IntroductionPage
  
