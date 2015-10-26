class TweetsAnimationPage
  constructor: (@container) ->
   
    @h2          = "#{@container} h2"
    @hr          = "#{@container} hr"
    @p           = "#{@container} p.text--center"


    @tweetsLogo = document.querySelectorAll "#{@container} li"


    @index       = 0
    @prevIndex   = null

    @prepare() 
  

  prepare: ->
    # TweenMax.set [@hr,@p], autoAlpha: 0
    # TweenMax.set @hr, width: 0
    # TweenMax.set @h2, autoAlpha: 0, y: -5

    TweenMax.set @tweetsLogo, autoAlpha: 0, 



  show: ->
    t = 0
    @switchTweet()


  switchTweet: =>

    @index+= 1
    @index = if @index > 2 then 0 else @index


    @tweenTweets?.kill()
    @tweenTweets = null

    @tweenTweets = new TimelineMax 
      paused: true
      delay: if not @prevIndex? then 1 else 3
      onComplete: @switchTweet

    if @prevIndex?
      @tweenTweets.to @tweetsLogo[@prevIndex], .3, autoAlpha: 0

    @tweenTweets.to @tweetsLogo[@index], .3, autoAlpha: 1
    
    @tweenTweets.play()
    @prevIndex = @index

  hide: ->
  

module.exports = TweetsAnimationPage
