class ServiceAnimationPage
  constructor: (@container) ->
    
    @h2          = "#{@container} h2"
    @hr          = "#{@container} hr"
    @p           = "#{@container} p"

    # @li        = "#{@container} li"
    @li1         = "#{@container} #service--li-1"
    @li2         = "#{@container} #service--li-2"
    @li3         = "#{@container} #service--li-3"
    
    @li1Svg      = "#{@container} #service--li-1 svg"
    @li2Svg      = "#{@container} #service--li-2 svg"
    @li3Svg      = "#{@container} #service--li-3 svg"
    
    @li1Text     = "#{@container} #service--li-1 h2"
    @li2Text     = "#{@container} #service--li-2 h2"
    @li3Text     = "#{@container} #service--li-3 h2"
    
    @button      = "#{@container} .arrow__btn"
    @buttonArrow = "#{@button} svg"

    @prepare() 

  prepare: ->
    TweenMax.set [@button, @hr, @p], autoAlpha: 0
    TweenMax.set @hr, width: 0
    TweenMax.set @h2, autoAlpha: 0, y: -5
    TweenMax.set @li1, autoAlpha: 0, y: -20
    TweenMax.set @li2, autoAlpha: 0, y: -20
    TweenMax.set @li3, autoAlpha: 0, y: -20

    TweenMax.set [@li1Text,@li2Text,@li3Text], autoAlpha: 0, x: -20
    # TweenMax.set @li2Text, autoAlpha: 0, x: -20
    # TweenMax.set @li3Text, autoAlpha: 0, x: -20

    TweenMax.set [@li1Svg,@li2Text,@li3Text], autoAlpha: 0, x: 20
    # TweenMax.set @li2Svg, autoAlpha: 0, x: 20
    # TweenMax.set @li3Svg, autoAlpha: 0, x: 20

    TweenMax.set @buttonArrow, y: -15, autoAlpha: 0

  show: ->
    t = 0
    @tm = new TimelineMax paused: true
    @tm.to( @h2, .3, {autoAlpha: 1, y: 0, ease: Ease.easeIn}, t+=.2)
    @tm.to( @hr, .6, {autoAlpha: 1, width: 60, ease: Back.easeOut}, t+=.3)
    @tm.to( @p, .5, {autoAlpha: 1, ease: Ease.easeOut}, t+=.3)
    
    @tm.to( @li1, .6, {autoAlpha: 1, y: 0, ease: Ease.easeOut}, t+=.3)
    @tm.to( @li1Text, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)
    @tm.to( @li1Svg, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)


    @tm.to( @li2, .8, {autoAlpha: 1, y: 0, ease: Ease.easeOut}, t+=.2)
    @tm.to( @li2Text, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)
    @tm.to( @li2Svg, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)


    @tm.to( @li3, 1, {autoAlpha: 1, y: 0, ease: Ease.easeOut}, t+=.15)
    @tm.to( @li3Text, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)
    @tm.to( @li3Svg, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)


    @tm.to( @li1Text, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.3)
    @tm.to( @li1Svg, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)

    @tm.to( @li2Text, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)
    @tm.to( @li2Svg, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)

    @tm.to( @li3Text, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)
    @tm.to( @li3Svg, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)


    @tm.to( @button, .3, {autoAlpha: 1, ease: Ease.easeIn}, t+=.3)
    @tm.to( @buttonArrow, .2, {y: 0, autoAlpha: 1, ease: Ease.easeOut}, t)

    @tm.play()
  hide: ->
  

module.exports = ServiceAnimationPage
