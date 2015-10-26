class MeetUsAnimationPage
  constructor: (@container) ->
    
    @h2          = "#{@container} h2"
    @hr          = "#{@container} hr"
    @p           = "#{@container} p"

    @button      = "#{@container} .arrow__btn"
    @buttonArrow = "#{@button} svg"


    @prepare()


  prepare: ->
    TweenMax.set [@button, @hr, @p], autoAlpha: 0
    TweenMax.set @hr, width: 0
    TweenMax.set @h2, autoAlpha: 0, y: -5
    TweenMax.set @buttonArrow, y: -15, autoAlpha: 0


  show: ->

    t = 0
    @tm = new TimelineMax paused: true
    @tm.to( @h2, .3, {autoAlpha: 1, y: 0, ease: Ease.easeIn}, t+=.2)
    @tm.to( @hr, .6, {autoAlpha: 1, width: 60, ease: Back.easeOut}, t+=.3)
    @tm.to( @p, .5, {autoAlpha: 1, ease: Ease.easeOut}, t+=.3)
    @tm.to( @button, .3, {autoAlpha: 1, ease: Ease.easeIn}, t+=.3)
    @tm.to( @buttonArrow, .2, {y: 0, autoAlpha: 1, ease: Ease.easeOut}, t)
    @tm.play()

  hide: ->
  

module.exports = MeetUsAnimationPage
