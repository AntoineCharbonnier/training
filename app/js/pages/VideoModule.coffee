BasePage = require '../BasePage'


class VideoModule extends BasePage
  
  _player:null
  _buttonPlay: null
  _buttonPause : null

  
  constructor: ->
    @container = '.video'
    super @container
    console.log "constructor video"
    @_buttonPlay     = document.getElementById("play")
    @_buttonPause    = document.getElementById("pause")
    @_player         = document.getElementsByTagName("video")[0]

    TweenMax.set(@_buttonPause, {opacity:0})

    @bindEvents()

  bindEvents: ->
    if(@_buttonPlay.addEventListener)
      @_buttonPlay.addEventListener('click', @_playClickHandkler, false)

    if(@_buttonPause.addEventListener)
      @_buttonPause.addEventListener('click', @_pauseClickHandkler, false)


  _playClickHandkler: (e) =>
    console.log "play"
    TweenMax.to(@_buttonPlay, 0.2, {opacity:0});
    TweenMax.to(@_buttonPause, 0.2, {opacity:1});
    @_player.play();
   


  _pauseClickHandkler: (e) =>
    console.log "pause"
    TweenMax.to(@_buttonPause, 0.2, {opacity:0});
    TweenMax.to(@_buttonPlay, 0.2, {opacity:1});
    @_player.pause();
   

  remove: ->
    @_player = null

  show: ->
    # super() NE CONTIENT PAS D ANIM
    console.log "OFFSET VIDEO",@offset
    console.log 'VideoPage:show'
    TweenMax.to(@_buttonPlay, 0.2, {opacity:0});
    TweenMax.to(@_buttonPause, 0.2, {opacity:1});
    @_player.play();

  hide: ->
    super()

module.exports = VideoModule