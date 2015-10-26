PagesTypes = require './PagesTypes'
# VideoModule = require './VideoModule'


class App
  constructor: () ->
    console.log '[APP]'

    @scrollManager = (require './ScrollManager').get()

    @pages = {}
    @pages[PagesTypes.INTRO]    = new (require './pages/IntroductionPage')()
    @pages[PagesTypes.MEETUS]   = new (require './pages/MeetUsPage')()
    @pages[PagesTypes.VIDEO]   = new (require './pages/VideoModule')()
    @pages[PagesTypes.SERVICE]  = new (require './pages/ServicePage')()
    @pages[PagesTypes.CHECK]  = new (require './pages/CheckPage')()
    @pages[PagesTypes.PROJECT]  = new (require './pages/ProjectPage')()
    @pages[PagesTypes.PARTNERS] = new (require './pages/PartnersPage')()
    @pages[PagesTypes.ABOUT] = new (require './pages/AboutPage')()
    @pages[PagesTypes.TWEET] = new (require './pages/TweetsPage')()
    @pages[PagesTypes.CONTACT]  = new (require './pages/ContactPage')()


    @scrollManager.addPages @pages

    # set top
    window.scrollTop = 0
    # @pages['introduction'].show()
    # @pages['meet-us'].show()
    # @video =  new (require './pages/VideoModule')() 

  resize: ->





app = null


# equal to jquery document ready function
document.addEventListener 'DOMContentLoaded', () =>
  app = new App()

  # resize app
  window.addEventListener 'resize', () =>
    app.resize()
  , false
  
