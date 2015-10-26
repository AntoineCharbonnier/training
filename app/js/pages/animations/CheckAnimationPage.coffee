class CheckAnimationPage
  constructor: (@container) ->
    
    @a           = "#{@container} a"
    @check_top   = "#{@container} #check--top"
    @check_bottom   = "#{@container} #check--bottom"



    @prepare()


  prepare: ->
    TweenMax.set @a, autoAlpha: 0 
    TweenMax.set @check_top, strokeDasharray: "0px, 900px"
    TweenMax.set @check_bottom, strokeDasharray: "0px, 900px"


  show: ->

    t = 0
    @tm = new TimelineMax paused: true

    @tm.to( @check_top, .9, {strokeDasharray: "360px, 900px"}, ease: Sine.easeInOut, t+=.3)
    @tm.to( @check_bottom, .9, {strokeDasharray: "360px, 900px"}, ease: Sine.easeInOut, t+=.3)
    @tm.to( @a, .5, {autoAlpha: 1, ease: Ease.easeOut}, t+=.5)
    @tm.play()

  hide: ->
  

module.exports = CheckAnimationPage
