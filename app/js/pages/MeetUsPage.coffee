BasePage = require '../BasePage'

class MeetUsPage extends BasePage
  constructor: () ->
    @container = '.meet'
    
    super @container

    @animationClass = new (require './animations/MeetUsAnimationPage')(@container)

    console.log '[MeetUsPage]'


  
  show: ->

    super()

    console.log 'MeetUsPage:show'

  hide: ->

    super()


module.exports= MeetUsPage