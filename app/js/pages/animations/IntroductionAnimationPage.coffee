class IntroductionAnimationPage
  constructor: (@container) ->

    @introContainer = document.querySelector '.introduction__container'
    

    @bg         = "#{@container} .introduction--background"
    @background = document.querySelector @bg


    @h3          = "#{@container} h3"
    @h1Text      = "#{@container} h1 span"
    @hr          = "#{@container} hr"
    @button      = "#{@container} .arrow__btn"
    @buttonArrow = "#{@button} svg"

    @h1BorderTop = "#{@container} .svg--h1-top" 
    @h1BorderBottom = "#{@container} .svg--h1-bottom" 

    @prepare()


    @bgOpacity = 0



  prepare: ->
    TweenMax.set [@button, @hr], autoAlpha: 0
    TweenMax.set @hr, width: 0
    TweenMax.set @h1Text, autoAlpha: 0, y: 30

    TweenMax.set @h3, autoAlpha: 0, y: -5
    TweenMax.set @bg, opacity: 0 #y: -20

    TweenMax.set @h1BorderTop, strokeDasharray: "0px, 900px"
    TweenMax.set @h1BorderBottom, strokeDasharray: "0px, 900px"

    TweenMax.set @buttonArrow, y: -15, autoAlpha: 0

  show: ->
    @introContainer.classList.remove 'hide'

    t = 0

    TweenMax.to @, 1, {bgOpacity: 1, ease: Sine.easeInOut, delay: t, onComplete: @doneOpacity, onUpdate: @updateOpacity}

    # TweenMax.to @bg, 1, {autoAlpha: 1, ease: Sine.easeInOut, delay: t}




    TweenMax.to @h3, .3, {autoAlpha: 1, y: 0, ease: Ease.easeIn, delay: t+=.2}
    TweenMax.to @hr, .6, autoAlpha: 1, width: 60, ease: Back.easeOut, delay: t+=.3

    TweenMax.to @h1BorderTop, .6, strokeDasharray: "910px, 900px", ease: Sine.easeInOut, delay: t
    TweenMax.to @h1BorderBottom, .6, strokeDasharray: "910px, 900px", ease: Sine.easeInOut, delay: t
    
    TweenMax.to @h1Text, .3, autoAlpha: 1, y: 0, ease: Back.easeOut, delay: t+=.5
    
    TweenMax.to @button, .3, autoAlpha: 1, ease: Ease.easeIn, delay: t+=.1
    TweenMax.to @buttonArrow, .2, y: 0, autoAlpha: 1, ease: Ease.easeOut, delay: t


  doneOpacity: =>

  updateOpacity: =>
    @background.style.opacity = @bgOpacity

  hide: ->


  
module.exports = IntroductionAnimationPage
