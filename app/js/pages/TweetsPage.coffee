BasePage = require '../BasePage'

class TweetsPage extends BasePage
  constructor: () ->
    @container = '.tweets'
    
    super @container
    @animationClass = new (require './animations/TweetsAnimationPage')(@container)

    console.log '[TweetsPage]'
    


  show: ->
    super()
    console.log '[TweetsPage:show]'

  hide: ->
    super()

module.exports= TweetsPage