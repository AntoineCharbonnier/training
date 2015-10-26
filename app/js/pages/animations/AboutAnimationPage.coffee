class AboutAnimationPage
  constructor: (@container) ->
    
    @h2          = "#{@container} h2"
    @hr          = "#{@container} hr"
    @p           = "#{@container} p.text--center"
    
    @button      = "#{@container} .arrow__btn"
    @buttonArrow = "#{@container} svg"
    
    @li1         = "#{@container} #about--li-1"
    @li2         = "#{@container} #about--li-2"
    @li3         = "#{@container} #about--li-3"
    @li4         = "#{@container} #about--li-4"
    
    @li1_img     = "#{@container} #about--li-1 img"
    @li2_img     = "#{@container} #about--li-2 img"
    @li3_img     = "#{@container} #about--li-3 img"
    
    @li1_hr      = "#{@container} #about--li-1 hr"
    @li2_hr      = "#{@container} #about--li-2 hr"
    @li3_hr      = "#{@container} #about--li-3 hr"
    
    @li1_h2      = "#{@container} #about--li-1 h2"
    @li2_h2      = "#{@container} #about--li-2 h2"
    @li3_h2      = "#{@container} #about--li-3 h2"
    
    @li1_p       = "#{@container} #about--li-1 p"
    @li2_p       = "#{@container} #about--li-2 p"
    @li3_p       = "#{@container} #about--li-3 p"

    @prepare() 
  

  prepare: ->
    TweenMax.set [@button, @hr,@p,@li1,@li2,@li3,@li4,@li1_hr,@li2_hr,@li3_hr], autoAlpha: 0
    
    
    TweenMax.set [@hr,@li1_hr,@li2_hr,@li3_hr], width: 0
    TweenMax.set @h2, autoAlpha: 0, y: -5
    TweenMax.set @buttonArrow, y: -15, autoAlpha: 0
    
    TweenMax.set [@li1,@li2,@li3,@li4], y:-50
    

    TweenMax.set [@li1_p,@li2_p,@li3_p], autoAlpha: 0, x:100
    TweenMax.set [@li1_h2,@li2_h2,@li3_h2], autoAlpha: 0, x: -20

    TweenMax.set [@li1_img,@li2_img,@li3_img], autoAlpha: 0, borderRadius: 0



  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to( @h2, .3, {autoAlpha: 1, y: 0, ease: Ease.easeIn}, t+=.2)
    @tm.to( @hr, .6, {autoAlpha: 1, width: 60, ease: Back.easeOut}, t+=.3)
    @tm.to( @p, .5, {autoAlpha: 1, ease: Ease.easeOut}, t+=.3)

    @tm.to( @li1, .6, {autoAlpha: 1, y: 0, ease: Ease.easeOut}, t+=.3)
    @tm.to( @li1_img, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)
    @tm.to( @li1_hr, .1, {autoAlpha: 0,width:0, ease: Back.easeOut}, t)
    @tm.to( @li1_h2, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)
    @tm.to( @li1_p, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)


    @tm.to( @li2, .6, {autoAlpha: 1, y: 0, ease: Ease.easeOut}, t+=.3)
    @tm.to( @li2_img, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)
    @tm.to( @li2_hr, .1, {autoAlpha: 0,width:0, ease: Back.easeOut}, t)
    @tm.to( @li2_h2, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)
    @tm.to( @li2_p, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)

      
    @tm.to( @li3, .6, {autoAlpha: 1, y: 0, ease: Ease.easeOut}, t+=.3)
    @tm.to( @li3_img, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)
    @tm.to( @li3_hr, .1, {autoAlpha: 0,width:0, ease: Back.easeOut}, t)
    @tm.to( @li3_h2, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)
    @tm.to( @li3_p, .1, {autoAlpha: 0, ease: Ease.easeOut}, t)


    @tm.to( @li4, .6, {autoAlpha: 1, y: 0, ease: Ease.easeOut}, t+=.3)
    



    @tm.to( @li2_img, .8, {autoAlpha: 1,borderRadius: 100, ease: Ease.easeOut}, t+=.2)
    @tm.to( @li3_img, .8, {autoAlpha: 1,borderRadius: 100, ease: Ease.easeOut}, t+=.2)
    @tm.to( @li1_img, .8, {autoAlpha: 1,borderRadius: 100, ease: Ease.easeOut}, t+=.2)

    @tm.to( @li1_h2, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)
    @tm.to( @li2_h2, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)
    @tm.to( @li3_h2, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)
    
    @tm.to( @li1_p, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)
    @tm.to( @li2_p, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)
    @tm.to( @li3_p, .5, {autoAlpha: 1,x: 0, ease: Back.easeOut}, t+=.1)


    @tm.to( @li1_hr, .6, {autoAlpha: 1, width: 60, ease: Back.easeOut}, t+=.3)
    @tm.to( @li2_hr, .6, {autoAlpha: 1, width: 60, ease: Back.easeOut}, t+=.3)
    @tm.to( @li3_hr, .6, {autoAlpha: 1, width: 60, ease: Back.easeOut}, t+=.3)

    @tm.to( @button, .3, {autoAlpha: 1, ease: Ease.easeIn}, t+=.3)
    @tm.to( @buttonArrow, .2, {y: 0, autoAlpha: 1, ease: Ease.easeOut}, t)

    @tm.play()
  hide: ->
  

module.exports = AboutAnimationPage
