PagesTypes = require './PagesTypes'

class ScrollManagerSingleton
  instance = null
  @get: () ->
    instance ?= new @()

class ScrollManager extends ScrollManagerSingleton
  constructor: ->
    
    @index        = -1
    @pagesOffsets = []
    @keyArray     = [PagesTypes.INTRO, PagesTypes.MEETUS,PagesTypes.VIDEO, PagesTypes.SERVICE,PagesTypes.CHECK, PagesTypes.PROJECT , PagesTypes.PARTNERS,PagesTypes.ABOUT,PagesTypes.TWEET ,PagesTypes.CONTACT]


    @isFirstScroll = yes

  addPages: (@pages) ->


    for key, page of @pages
      if page.offset?
        @pagesOffsets.push page.offset

    window.addEventListener "scroll", @scroll, false
    @scroll()

  scroll: =>
    e = (document.documentElement.scrollTop || document.body.scrollTop)

    i = 0
    for offset in @pagesOffsets

      if @isFirstScroll
        if (e+window.innerHeight*.5) <= offset
          @index = if i-1 < 0 then 0 else i-1
          @pages[@keyArray[@index]].show()
          # console.log e, window.innerWidth, 
          break
      else
        if (e >= offset - 30) and (e <= offset + 30)
          if @index isnt i
            @index = i
            # console.log @pages[@keyArray[@index]]
            @pages[@keyArray[@index]].show()

      i++

    # end loop
    @isFirstScroll = no    
    










module.exports = ScrollManager