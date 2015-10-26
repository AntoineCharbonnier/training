BasePage = require '../BasePage'

class ProjectPage extends BasePage
  constructor: () ->
    @container = '.project'
    
    super @container
    @animationClass = new (require './animations/ProjectAnimationPage')(@container)

    console.log '[ProjectPage]'
    


  show: ->
    super()
    console.log 'ProjectPage:show'
  hide: ->
    super()


module.exports= ProjectPage