class ContactAnimationPage
  constructor: (@container) ->
    @h2          = "#{@container} h2"
    @hr          = "#{@container} hr"
    # @p           = "#{@container} p.text--center"

    @h2_adress = "#{@container} .adress__container h2"
    # @h2_adress_before = "#{@container}  .adress__container h2::before"

    @p_text_left = "#{@container} .adress__container p.text--left"

    @li_facebook = "#{@container} li.facebook"
    @li_twitter = "#{@container} li.twitter"
    @li_vimeo = "#{@container} li.vimeo"
    @li_behance = "#{@container} li.behance"

    @input_name = "#{@container} input.name"
    @input_email = "#{@container} input.email"
    @input_tel = "#{@container} input.tel"
    @input_subject = "#{@container} input.subject"

    @textarea = "#{container} textarea.msg.input__message"

    @send = "#{@container} input.send__btn"



    #footer
    @h2_footer = ".footer__container h2"
    @h2_footer_span = ".footer__container .colored"
    @h2_back = ".back__btn__text"



    @prepare() 
  prepare: ->
    TweenMax.set [@hr,@p,@h2,@h2_adress,@p_text_left,@input_name,@input_tel,@input_email,@input_subject,@textarea,@send,@h2_adress_before,@li_facebook,@li_twitter,@li_vimeo,@li_behance,@h2_footer,@h2_footer_span,@h2_back ], autoAlpha: 0
    
    TweenMax.set [@input_name,@input_tel], x:-250
    TweenMax.set [@input_email,@input_subject,@h2_back ], x:250

    TweenMax.set [@li_facebook,@li_twitter,@li_vimeo,@li_behance], y:250
    
    TweenMax.set @send, y:-250, height: 0, padding : 0
    
    TweenMax.set @textarea, height: 0
    
    TweenMax.set @h2_footer, x:-100
    TweenMax.set @h2_footer_span, y:-100




  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to( @h2, .3, {autoAlpha: 1, y: 0, ease: Ease.easeIn}, t+=.2)
    @tm.to( @h2_adress, .1, {autoAlpha: 0, ease: Ease.easeIn}, t)
    @tm.to( @h2_footer, .1, {autoAlpha: 0, ease: Ease.easeIn}, t)
    @tm.to( @h2_footer_span, .1, {autoAlpha: 0, ease: Ease.easeIn}, t)

    @tm.to( @hr, .6, {autoAlpha: 1, width: 60, ease: Back.easeOut}, t+=.3)
    
    @tm.to( [@input_name,@input_subject], .6, {autoAlpha: 1, x: 0, ease: Back.easeOut}, t+=.3)
    @tm.to( [@input_email,@input_tel], .6, {autoAlpha: 1, x: 0, ease: Back.easeOut}, t+=.3)
    
    @tm.to( @p_text_left, .4, {autoAlpha: 1, ease: Ease.easeIn}, t)
    @tm.to( @h2_adress, .4, {autoAlpha: 1, ease: Ease.easeIn}, t)

    @tm.to( @textarea, .5, {autoAlpha: 1,height:150, ease: Back.easeOut}, t+=.2)
    
    @tm.to( @li_facebook, .8, {autoAlpha : 1 ,y: 0,  ease: Back.easeOut}, t+=.1)
    @tm.to( @li_twitter, .8, {autoAlpha : 1 ,y: 0,  ease: Back.easeOut}, t+=.1)
    @tm.to( @li_vimeo, .8, {autoAlpha : 1 ,y: 0,  ease: Back.easeOut}, t+=.1)
    @tm.to( @li_behance, .8, {autoAlpha : 1 ,y: 0,  ease: Back.easeOut}, t+=.1)


    @tm.to( @send, .8, {autoAlpha : 1 ,y: 0,  ease: Back.easeOut}, t+=.2)
    
    @tm.to( @send, .5, {height: 50 ,  ease: Back.easeOut}, t+=.3)
    @tm.to( @send, .8, {padding:"10px 0px",  ease: Back.easeOut}, t+=.3)

    @tm.to( @h2_footer, .2, {autoAlpha : 1, x: 0,  ease: Back.easeOut}, t+=.2)
    @tm.to( @h2_footer_span, .1, {autoAlpha : 0, y: -250,  ease: Back.easeOut}, t)

    @tm.to( @h2_back, .1, {autoAlpha: 0, ease: Ease.easeIn}, t)

    @tm.to( @h2_footer_span, .8, {autoAlpha : 1, y: 0,  ease: Back.easeOut}, t+=.2)
    @tm.to( @h2_back, .1, {autoAlpha: 0,x:250, ease: Ease.easeIn}, t)

    @tm.to( @h2_back, .3, {autoAlpha: 1,x:0, ease: Ease.easeIn}, t+=.5)




    @tm.play()
  hide: ->
  

module.exports = ContactAnimationPage
