class PartnersAnimationPage
  constructor: (@container) ->
   
    @h2          = "#{@container} h2"
    @hr          = "#{@container} hr"
    @p           = "#{@container} p.text--center"
    @button      = "#{@container} .arrow__btn"
    @buttonArrow = "#{@container} svg"

    # @addidas     = "#{@container} li.partners__addidas"
    # @google      = "#{@container} li.partners__google"
    # @samsung     = "#{@container} li.partners__samsung"
    # @microsoft   = "#{@container} li.partners__microsoft"

    @partnersLogo = "#{@container} li"

    @bg          =  "#{@container} .partners--background"



    @prepare() 
  

  prepare: ->
    TweenMax.set [@button, @hr,@p], autoAlpha: 0
    TweenMax.set @hr, width: 0
    TweenMax.set @h2, autoAlpha: 0, y: -5
    TweenMax.set @buttonArrow, y: -15, autoAlpha: 0

    TweenMax.set @partnersLogo, autoAlpha: 0, y: 100
    TweenMax.set @bg, autoAlpha: 0


  show: ->
    t = 0
    @tm = new TimelineMax paused: true#, repeat: -1, yoyo: true, repeatDelay: 3.0

    @tm.to( @bg, 1.5,{autoAlpha: 1, ease: Ease.easeIn}, t+=.2)

    @tm.to( @h2, .3, {autoAlpha: 1, y: 0, ease: Ease.easeIn}, t+=.2)
    @tm.to( @hr, .6, {autoAlpha: 1, width: 60, ease: Back.easeOut}, t+=.3)
    @tm.to( @p, .5, {autoAlpha: 1, ease: Ease.easeOut}, t+=.3)
    

    @tm.staggerTo(@partnersLogo, .5, {autoAlpha: 1, y: 0, ease: Back.easeOut}, .2, t+=.3)

    # @tm.to( @addidas, .5, {autoAlpha: 1,y: 0, ease: Back.easeOut}, t+=.3)
    # @tm.to( @google, .5, {autoAlpha: 1,y: 0, ease: Back.easeOut}, t+=.2)
    # @tm.to( @samsung, .5, {autoAlpha: 1,y: 0, ease: Back.easeOut}, t+=.2)
    # @tm.to( @microsoft, .5, {autoAlpha: 1,y: 0, ease: Back.easeOut}, t+=.2)

    @tm.play()

  hide: ->
  

module.exports = PartnersAnimationPage
