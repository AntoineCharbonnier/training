require "../js/VideoModule"

VideoModule = new (require "../js/VideoModule")()



# burger nav animation // ajoute ou enlev la class is--closed selon si le btn a ete clické ou non
navicon = document.querySelectorAll(".navicon")
[].forEach.call navicon, (navicon) -> #parcours tous les .navicon trouvé pour appliqué ou enlever un nouveau style selon le statut
  open = false
  navicon.onclick = (event) ->
    event.preventDefault()
    unless open # si il ne l'a pas
      @classList.add "is--closed"
      open = true
    else
      @classList.remove "is--closed"
      open = false
    return

  return


# doesn't work
class Slider 
  console.log "before slider constructor in class"
  constructor: (options = {}) ->
    console.log "inside constructor slide "
    @options =
      slidesPerPage: options.slidesPerPage or 1
      slider:        options.slider
      slides:        options.slides
      pagination:    options.pagination
      transition:    options.transition or "back:out"
      duration:      options.duration or 800
      slideDelay:    options.slideDelay or 200
      interval:      8000

    @elements =
      slider:     @options.slider
      slides:     @options.slides
      pagination: @options.pagination

    @current =
      page: 0

    if @elements.slider

      @elements.slides.set "morph",
        transition: @options.transition
        link:       "chain"
        duration:   @options.duration

      @elements.slider.addEvents
        mouseenter: @pause
        mouseleave: @resume

      Elements.each @elements.pagination, (element, index) =>
        element.addEvents
          click: (event) =>
            event?.stop()
            currentIndex  = index or 0
            @current.page = currentIndex
            @switchPage()

      @timer = @switchPage.periodical @options.interval

      @switchPage()

  switchPage: =>

    # set the widths each time due to fluid or responsive layouts
    @widths =
      slides: @elements.slides[0].getSize().x
      slider: @elements.slider.getSize().x

    offsets =
      current: @current.page * @options.slidesPerPage
      next:    @options.slidesPerPage * (@current.page + 1)

    @lastPageSlides    = @currentPageSlides
    @currentPageSlides = @elements.slides.slice offsets.current, offsets.next
    @animatePages()
    @updatePagination()
    @updateCounter()

  updateCounter: =>
    @current.page = @current.page + 1;

    if @current.page is @elements.pagination.length
      @current.page = 0

  updatePagination: =>
    @elements.pagination.getParent().removeClass "selected"
    @elements.pagination[@current.page].getParent().addClass "selected"

  animatePages: =>
    Elements.each @lastPageSlides, @hidePage

    showPage = =>
      Elements.each @currentPageSlides, @showPage

    showPage.delay @options.slideDelay * @options.slidesPerPage

  showPage: (slide, index) =>

    animate = =>
      slide.morph
        opacity: 1
        left: [@widths.slider, (@widths.slides * index)]

    animate.delay @options.slideDelay * index

  hidePage: (slide, index) =>

    animate = =>
      slide.morph
        opacity: 0
        left: -@widths.slides

    animate.delay @options.slideDelay * index

  pause: =>
    clearInterval @timer

  resume: =>
    @timer = @switchPage.periodical @options.interval





window.addEvents
  domready: ->
    console.log "domready new slider"
    new Slider
      slider:     document.id "slider"
      slides:     document.getElements "#slides li"
      pagination: document.getElements "#pagination a"






