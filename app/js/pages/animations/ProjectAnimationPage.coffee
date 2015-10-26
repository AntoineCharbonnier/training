class ProjectAnimationPage
  constructor: (@container) ->
    
    @h2          = "#{@container} h2"
    @hr          = "#{@container} hr"
    @p           = "#{@container} p.text--center"
    
    @button      = "#{@container} .arrow__btn"
    @buttonArrow = "#{@container} svg"
    
    @li1         = "#{@container} li.img--project.project1"
    @li2         = "#{@container} li.img--project.project2"
    @li3         = "#{@container} li.img--project.project3"
    @li4         = "#{@container} li.img--project.project4"
    @li5         = "#{@container} li.img--project.project5"    
    
    @aBox        = "#{@container} a.behance__btn  "#.project--a--backgroung
    @aBoxText    = "#{@container} a.behance__btn p"


    @prepare() 
  

  prepare: ->
    TweenMax.set [@button, @hr,@p], autoAlpha: 0
    TweenMax.set @hr, width: 0
    TweenMax.set @h2, autoAlpha: 0, y: -5
    TweenMax.set @buttonArrow, y: -15, autoAlpha: 0

    TweenMax.set @li1, x: 200, autoAlpha: 0
    TweenMax.set @li2, x: 50, autoAlpha: 0
    TweenMax.set @li3, y: 0, autoAlpha: 0
    TweenMax.set @li4, x: -50, autoAlpha: 0
    TweenMax.set @li5, x: -200, autoAlpha: 0

    TweenMax.set @aBox, autoAlpha: 0, width: 0, height: 0
    TweenMax.set @aBoxText, autoAlpha: 0


  show: ->
    t = 0
    @tm = new TimelineMax paused: true
    @tm.to( @h2, .3, {autoAlpha: 1, y: 0, ease: Ease.easeIn}, t+=.2)
    @tm.to( @hr, .6, {autoAlpha: 1, width: 60, ease: Back.easeOut}, t+=.3)
    @tm.to( @p, .5, {autoAlpha: 1, ease: Ease.easeOut}, t+=.3)


    
    @tm.to( @li3, .3, {autoAlpha: 1,y: 0, ease: Ease.easeOut}, t+=.1)  
    @tm.to( @li2, .5, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t+=.3)
    @tm.to( @li4, .5, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t)
    @tm.to( @li1, .8, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t+=.3)
    @tm.to( @li5, .8, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t)
  
    

    @tm.to( @aBox, .3, {autoAlpha: 1, ease: Back.easeOut}, t+=.1)
    @tm.to( @aBox, .3, {height:30, ease: Back.easeOut}, t+=.1)
    @tm.to( @aBox, .5, {width: 190, ease: Back.easeOut}, t+=.2)



    @tm.to( @aBoxText, .8, {autoAlpha: 1, ease: Back.easeOut}, t+=.3)

    @tm.to( @button, .3, {autoAlpha: 1, ease: Ease.easeIn}, t+=.3)
    @tm.to( @buttonArrow, .2, {y: 0, autoAlpha: 1, ease: Ease.easeOut}, t)

    @tm.play()
  hide: ->
  

module.exports = ProjectAnimationPage
