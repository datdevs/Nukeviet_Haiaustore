<!-- BEGIN: main -->
<style data-style="widget-contact">
  @-webkit-keyframes attention{0%,20%,53%,to{-webkit-animation-timing-function:cubic-bezier(.215,.61,.355,1);animation-timing-function:cubic-bezier(.215,.61,.355,1);-webkit-transform:translateZ(0);transform:translateZ(0)}40%,43%{-webkit-animation-timing-function:cubic-bezier(.755,.05,.855,.06);animation-timing-function:cubic-bezier(.755,.05,.855,.06);-webkit-transform:translate3d(0,-10px,0) scaleY(1.1);transform:translate3d(0,-10px,0) scaleY(1.1)}70%{-webkit-animation-timing-function:cubic-bezier(.755,.05,.855,.06);animation-timing-function:cubic-bezier(.755,.05,.855,.06);-webkit-transform:translate3d(0,-5px,0) scaleY(1.05);transform:translate3d(0,-5px,0) scaleY(1.05)}80%{-webkit-transform:translateZ(0) scaleY(.95);transform:translateZ(0) scaleY(.95);transition-timing-function:cubic-bezier(.215,.61,.355,1)}90%{-webkit-transform:translate3d(0,-4px,0) scaleY(1.02);transform:translate3d(0,-4px,0) scaleY(1.02)}}@keyframes attention{0%,20%,53%,to{-webkit-animation-timing-function:cubic-bezier(.215,.61,.355,1);animation-timing-function:cubic-bezier(.215,.61,.355,1);-webkit-transform:translateZ(0);transform:translateZ(0)}40%,43%{-webkit-animation-timing-function:cubic-bezier(.755,.05,.855,.06);animation-timing-function:cubic-bezier(.755,.05,.855,.06);-webkit-transform:translate3d(0,-10px,0) scaleY(1.1);transform:translate3d(0,-10px,0) scaleY(1.1)}70%{-webkit-animation-timing-function:cubic-bezier(.755,.05,.855,.06);animation-timing-function:cubic-bezier(.755,.05,.855,.06);-webkit-transform:translate3d(0,-5px,0) scaleY(1.05);transform:translate3d(0,-5px,0) scaleY(1.05)}80%{-webkit-transform:translateZ(0) scaleY(.95);transform:translateZ(0) scaleY(.95);transition-timing-function:cubic-bezier(.215,.61,.355,1)}90%{-webkit-transform:translate3d(0,-4px,0) scaleY(1.02);transform:translate3d(0,-4px,0) scaleY(1.02)}}@-webkit-keyframes popupOrder{0%{opacity:0;-webkit-transform:scale(.8);transform:scale(.8)}to{opacity:1;-webkit-transform:scale(1);transform:scale(1)}}@keyframes popupOrder{0%{opacity:0;-webkit-transform:scale(.8);transform:scale(.8)}to{opacity:1;-webkit-transform:scale(1);transform:scale(1)}}.vuj-icon{align-items:center;display:inline-flex;justify-content:center}.vuj-icon svg{height:1em;width:1em}.vuj-widget-contact-mobile{background:#fff;border-top-left-radius:1rem;border-top-right-radius:1rem;bottom:0;box-shadow:0 0 5px 0 rgba(51,51,51,.2);display:flex;left:0;padding:.5rem 1rem;position:fixed;right:0;z-index:1050}.vuj-widget-contact-item{flex:1}.vuj-widget-contact-item a{align-items:center;color:#646262;display:flex;flex-direction:column}.vuj-widget-contact-item .vuj-icon{font-size:28px;margin-bottom:5px}.vuj-widget-contact-item span{font-size:10px;line-height:1}.vuj-widget-contact-desktop{bottom:0;display:none;left:0;padding:2rem;position:fixed;z-index:1050}.vuj-widget-fly{position:relative}.vuj-widget-fly-button{background:#fe696a;border:0;border-radius:50%;box-shadow:2px 5px 20px rgba(0,0,0,.1);display:flex;font-size:2rem;padding:15px;transition:-webkit-transform .3s;transition:transform .3s;transition:transform .3s,-webkit-transform .3s}.vuj-widget-fly-button i{-webkit-animation:attention 2s linear infinite both;animation:attention 2s linear infinite both}.openpopup .vuj-widget-fly-button{-webkit-transform:scale(.8);transform:scale(.8)}.openpopup .vuj-widget-fly-button i,.vuj-widget-fly-button:hover i{-webkit-animation:none;animation:none}.vuj-widget-contact-desktop-items{bottom:100%;display:none;flex-direction:column;left:0;margin-bottom:10px;position:absolute;right:0}.vuj-widget-contact-desktop-item{-webkit-animation:popupOrder .5s;animation:popupOrder .5s;background:#fe696a;border-radius:50%;display:flex;height:62px;width:62px}.vuj-widget-contact-desktop-item.vuj-phone{background:#8ad336}.vuj-widget-contact-desktop-item.vuj-sms{background:#ffc044}.vuj-widget-contact-desktop-item.vuj-messenger{background:#0084ff}.vuj-widget-contact-desktop-item.vuj-zalo{background:#0573ff}.vuj-widget-contact-desktop-item.vuj-maps{background:#07d8f8}.vuj-widget-contact-desktop-item+.vuj-widget-contact-desktop-item{margin-top:10px}.vuj-widget-contact-desktop-item a{align-items:center;color:#fff;display:flex;font-size:1.5rem;height:100%;justify-content:center;width:100%}.openpopup .vuj-widget-contact-desktop-items{display:flex}@media (max-width:767px){.page-wrapper{padding-bottom:60px}}@media (min-width:768px){.vuj-widget-contact-mobile{display:none}.vuj-widget-contact-desktop{display:flex}}
</style>
<div class="vuj-widget-contact-mobile">
  <div class="vuj-widget-contact-item vuj-phone">
    <a href="tel:{DATA.phone_number}" aria-label="Gọi ngay" rel="nofollow"><i class="vuj-icon">{FILE "../images/icons/widget_m_icon_click_to_call.svg"}</i><span>Gọi ngay</span></a>
  </div>
  <div class="vuj-widget-contact-item vuj-sms">
    <a href="sms:{DATA.phone_number}" aria-label="Nhắn tin" rel="nofollow"><i class="vuj-icon">{FILE "../images/icons/widget_m_icon_contact_form.svg"}</i><span>Nhắn tin</span></a>
  </div>
  <div class="vuj-widget-contact-item vuj-messenger">
    <a href="https://www.messenger.com/t/{DATA.messenger_id}" aria-label="Messenger" target="_blank" rel="nofollow"><i class="vuj-icon">{FILE "../images/icons/widget_m_icon_messenger.svg"}</i><span>Messenger</span></a>
  </div>
  <div class="vuj-widget-contact-item vuj-zalo">
    <a href="https://zalo.me/{DATA.zalo}" aria-label=">Zalo" target="_blank" rel="nofollow"><i class="vuj-icon">{FILE "../images/icons/widget_m_icon_zalo.svg"}</i><span>Zalo</span></a>
  </div>
  <div class="vuj-widget-contact-item vuj-maps">
    <a href="{DATA.maps}" aria-label="Bản đồ" target="_blank" rel="nofollow"><i class="vuj-icon">{FILE "../images/icons/widget_m_icon_map.svg"}</i><span>Bản đồ</span></a>
  </div>
</div>
<div class="vuj-widget-contact-desktop">
  <div class="vuj-widget-fly">
    <button class="vuj-widget-fly-button" aria-label="open contact">
      <i class="vuj-icon">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
          <path fill="#ffffff" d="M416 256V63.1C416 28.75 387.3 0 352 0H64C28.75 0 0 28.75 0 63.1v192C0 291.2 28.75 320 64 320l32 .0106v54.25c0 7.998 9.125 12.62 15.5 7.875l82.75-62.12L352 319.9C387.3 320 416 291.2 416 256zM576 128H448v128c0 52.87-43.13 95.99-96 95.99l-96 .0013v31.98c0 35.25 28.75 63.1 63.1 63.1l125.8-.0073l82.75 62.12C534.9 514.8 544 510.2 544 502.2v-54.24h32c35.25 0 64-28.75 64-63.1V191.1C640 156.7 611.3 128 576 128z"/>
        </svg>
      </i>
    </button>
    <div class="vuj-widget-contact-desktop-items">
      <div class="vuj-widget-contact-desktop-item vuj-phone">
        <a href="tel:{DATA.phone_number}" aria-label="Gọi ngay" rel="nofollow"><i class="vuj-icon">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M511.2 387l-23.25 100.8c-3.266 14.25-15.79 24.22-30.46 24.22C205.2 512 0 306.8 0 54.5c0-14.66 9.969-27.2 24.22-30.45l100.8-23.25C139.7-2.602 154.7 5.018 160.8 18.92l46.52 108.5c5.438 12.78 1.77 27.67-8.98 36.45L144.5 207.1c33.98 69.22 90.26 125.5 159.5 159.5l44.08-53.8c8.688-10.78 23.69-14.51 36.47-8.975l108.5 46.51C506.1 357.2 514.6 372.4 511.2 387z"></path></svg>
        </i></a>
      </div>
      <div class="vuj-widget-contact-desktop-item vuj-sms">
        <a href="sms:{DATA.phone_number}" aria-label="Nhắn tin" rel="nofollow"><i class="vuj-icon">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M511.1 63.1v287.1c0 35.25-28.75 63.1-64 63.1h-144l-124.9 93.68c-7.875 5.75-19.12 .0497-19.12-9.7v-83.98h-96c-35.25 0-64-28.75-64-63.1V63.1c0-35.25 28.75-63.1 64-63.1h384C483.2 0 511.1 28.75 511.1 63.1z"></path></svg>
        </i></a>
      </div>
      <div class="vuj-widget-contact-desktop-item vuj-messenger">
        <a href="https://www.messenger.com/t/{DATA.messenger_id}" aria-label="Messenger" target="_blank" rel="nofollow"><i class="vuj-icon">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M256.5 8C116.5 8 8 110.3 8 248.6c0 72.3 29.71 134.8 78.07 177.9 8.35 7.51 6.63 11.86 8.05 58.23A19.92 19.92 0 0 0 122 502.3c52.91-23.3 53.59-25.14 62.56-22.7C337.9 521.8 504 423.7 504 248.6 504 110.3 396.6 8 256.5 8zm149.2 185.1l-73 115.6a37.37 37.37 0 0 1 -53.91 9.93l-58.08-43.47a15 15 0 0 0 -18 0l-78.37 59.44c-10.46 7.93-24.16-4.6-17.11-15.67l73-115.6a37.36 37.36 0 0 1 53.91-9.93l58.06 43.46a15 15 0 0 0 18 0l78.41-59.38c10.44-7.98 24.14 4.54 17.09 15.62z"></path></svg>
        </i></a>
      </div>
      <div class="vuj-widget-contact-desktop-item vuj-zalo">
        <a href="https://zalo.me/{DATA.zalo}" aria-label="Zalo"target="_blank" rel="nofollow"><i class="vuj-icon">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 28"><path fill="currentColor" d="M7.9,25.6L7.9,25.6L7.9,25.6c0.5,0,0.9,0,1.4,0l0,0l0,0c0.1,0,0.2,0,0.3,0h7.6c0.6,0,1.3,0,1.9,0h0c1.3,0,2.5,0,3.8,0h0c1.7,0,3.2-1.4,3.1-3.2v-3.1c0,0,0,0,0-0.1c0-0.1,0-0.2,0-0.2c-0.1,0-0.2,0-0.3,0.1c-0.4,0.3-0.8,0.6-1.2,0.9l0,0c-0.8,0.6-1.6,1.2-2.4,1.6c-3.4,1.1-6.4,1.2-9.6,0.4C12.2,22,12.2,22,12,22h0l0,0c-0.1,0-0.2,0-0.4,0c0,0,0,0-0.1,0h0c-0.3,0-0.8,0-1.3,0.4c-1.3,0.4-3,0.4-3.9,0.3c0,0,0,0,0,0l0,0l0,0c0,0,0,0,0,0c0,0-0.1-0.1,0-0.1c0,0,0,0,0.1,0c0,0,0.1-0.1,0.1-0.1c0.7-0.4,1.3-0.9,1.8-1.6c0.6-0.7,0.3-1-0.2-1.5l0,0c-2.5-2.5-3.2-5.2-3-8.8c0.3-2,1.2-3.7,2.5-5.2C8.4,4.3,9.3,3.6,10.4,3c0,0,0,0,0.1,0c0.1,0,0.1,0,0.1-0.1c0-0.1-0.1-0.1-0.1-0.1c-0.6,0-1.2,0-1.8,0c-1.2,0-2.3,0-3.5,0C3.5,2.8,2,4,2,6C2,9.7,2,13.3,2,17c0,1.8,0,3.6,0,5.5c0,1.7,1.3,3.1,3,3.2C6,25.6,6.9,25.6,7.9,25.6L7.9,25.6L7.9,25.6z M6.4,22.8L6.4,22.8c0.1,0.1,0.2,0.2,0.3,0.3C6.5,23,6.5,22.9,6.4,22.8L6.4,22.8z M9,25.3C9,25.3,9,25.3,9,25.3L9,25.3L9,25.3C9,25.3,9,25.3,9,25.3z M10.1,13.9c0.3,0,0.5,0,0.8,0c0.5,0,1,0,1.5,0c0.4,0,0.6,0.2,0.7,0.5c0,0.4-0.2,0.7-0.6,0.7c-0.6,0-1.3,0-1.9,0c-0.2,0-0.4,0-0.6,0c-0.1,0-0.1,0-0.2,0h0h0c-0.2,0-0.3,0-0.5,0c-0.3,0-0.6-0.1-0.7-0.4c-0.1-0.3,0-0.6,0.2-0.9c0.8-1,1.6-2.1,2.4-3.1c0-0.1,0.1-0.1,0.1-0.2c0-0.1-0.1-0.1-0.1-0.1c0,0,0,0-0.1,0c-0.3,0-0.6,0-0.9,0c-0.3,0-0.6,0-0.9,0c-0.1,0-0.3,0-0.4,0c-0.3-0.1-0.5-0.4-0.4-0.7c0-0.2,0.2-0.4,0.4-0.4c0.1,0,0.3,0,0.4,0c0.9,0,1.9,0,2.8,0c0.2,0,0.3,0,0.5,0.1c0.4,0.1,0.5,0.5,0.4,0.8c-0.1,0.3-0.3,0.6-0.5,0.8h0c-0.7,0.9-1.4,1.7-2.1,2.6C10.2,13.7,10.2,13.8,10.1,13.9z M16.2,11.1c0.1-0.2,0.3-0.3,0.5-0.4c0.4-0.1,0.8,0.2,0.8,0.6c0,1,0,2.1,0,3.1c0,0.3-0.2,0.5-0.4,0.6c-0.3,0.1-0.6,0-0.7-0.2c-0.1-0.1-0.1-0.1-0.3,0c-0.5,0.4-1,0.5-1.6,0.3c-0.9-0.3-1.3-1-1.4-1.9c-0.1-1,0.2-1.8,1.1-2.3C14.8,10.5,15.5,10.6,16.2,11.1z M15.3,11.9c0.1,0,0.2,0,0.2,0c0.2,0.1,0.3,0.2,0.4,0.3c0.3,0.4,0.3,1.1,0,1.4c-0.1,0.1-0.1,0.1-0.2,0.2C15.6,14,15.4,14,15.2,14c-0.2,0-0.4-0.1-0.5-0.2c-0.1,0-0.1-0.1-0.2-0.2c-0.1-0.2-0.2-0.4-0.2-0.6C14.3,12.3,14.7,11.9,15.3,11.9z M19.8,13.1c0-1.3,0.8-2.3,2.1-2.4c1.3,0,2.3,0.9,2.3,2.2c0,1.3-0.8,2.3-2,2.4C20.9,15.4,19.8,14.4,19.8,13.1z M21.1,13c0,0.3,0.1,0.5,0.2,0.7l0,0c0,0.1,0.1,0.1,0.1,0.1c0.1,0.1,0.2,0.1,0.2,0.1c0.2,0.1,0.4,0.1,0.6,0c0.1-0.1,0.3-0.1,0.4-0.3l0,0l0,0c0.1-0.2,0.2-0.5,0.2-0.7c0-0.2-0.1-0.5-0.2-0.7c0,0,0-0.1-0.1-0.1c-0.1-0.2-0.4-0.3-0.6-0.3c0,0-0.1,0-0.1,0C21.5,11.9,21.1,12.3,21.1,13C21.1,12.9,21.1,12.9,21.1,13L21.1,13z M19.3,12c0,0.3,0,0.5,0,0.8c0,0.5,0,1.1,0,1.6c0,0.4-0.3,0.7-0.7,0.7c-0.1,0-0.1,0-0.2,0c-0.3-0.1-0.5-0.3-0.5-0.7v-4.2c0-0.1,0-0.2,0-0.2c0-0.2,0-0.3,0-0.5c0-0.4,0.3-0.7,0.6-0.7c0.4,0,0.7,0.3,0.7,0.7c0,0.5,0,1.1,0,1.6v0v0C19.3,11.5,19.3,11.8,19.3,12z"></path></svg>
        </i></a>
      </div>
      <div class="vuj-widget-contact-desktop-item vuj-maps">
        <a href="{DATA.maps}" aria-label="Bản đồ" target="_blank" rel="nofollow"><i class="vuj-icon">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path fill="currentColor" d="M288 0C221.7 0 168 53.73 168 120c0 48.38 16.86 61.9 107.7 193.5c5.957 8.604 18.69 8.604 24.65 0C391.1 181.9 408 168.4 408 120C408 53.73 354.3 0 288 0zM10.06 227.6C3.984 230 0 235.9 0 242.4v253.5c0 11.32 11.49 19.04 22 14.84L160 448V201.4C152.5 188.8 147.2 178 143.4 167.5L10.06 227.6zM326.6 331.8C317.9 344.4 303.4 352 288 352c-15.42 0-29.86-7.566-38.66-20.28C233.2 308.3 196.9 256.6 192 249.6V447.1L384 512V249.6C379.1 256.6 342.8 308.3 326.6 331.8zM554.1 161.2L416 224v288l149.9-67.59C572 441.1 576 436.1 576 429.6V176C576 164.7 564.6 156.1 554.1 161.2z"></path></svg>
        </i></a>
      </div>
    </div>
  </div>
</div>
<script async defer>
  ready(() => {
    document.querySelector('.vuj-widget-fly-button').addEventListener('click', (e) => {
      e.currentTarget.parentElement.classList.toggle('openpopup')
    })
  })
</script>
<!-- END: main -->
<style data-style="widget-contact">
  @keyframes attention {
    from,
    20%,
    53%,
    to {
      animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
      transform: translate3d(0, 0, 0);
    }

    40%,
    43% {
      animation-timing-function: cubic-bezier(0.755, 0.05, 0.855, 0.06);
      transform: translate3d(0, -10px, 0) scaleY(1.1);
    }

    70% {
      animation-timing-function: cubic-bezier(0.755, 0.05, 0.855, 0.06);
      transform: translate3d(0, -5px, 0) scaleY(1.05);
    }

    80% {
      transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
      transform: translate3d(0, 0, 0) scaleY(0.95);
    }

    90% {
      transform: translate3d(0, -4px, 0) scaleY(1.02);
    }
  }
  @keyframes popupOrder {
    from {
      opacity: 0;
      transform: scale(0.8);
    }
    to {
      opacity: 1;
      transform: scale(1);
    }
  }
  .vuj-icon {
    align-items: center;
    display: inline-flex;
    justify-content: center;
  }
  .vuj-icon svg {
    height: 1em;
    width: 1em;
  }
  .vuj-widget-contact-mobile {
    background: #ffffff;
    border-top-left-radius: 1rem;
    border-top-right-radius: 1rem;
    bottom: 0;
    box-shadow: 0 0 5px 0 rgba(51, 51, 51, 0.2);
    display: flex;
    left: 0;
    padding: 0.5rem 1rem;
    position: fixed;
    right: 0;
    z-index: 1050;
  }
  .vuj-widget-contact-item {
    flex: 1;
  }
  .vuj-widget-contact-item a {
    align-items: center;
    color: #646262;
    display: flex;
    flex-direction: column;
  }
  .vuj-widget-contact-item .vuj-icon {
    font-size: 28px;
    margin-bottom: 5px;
  }
  .vuj-widget-contact-item span {
    font-size: 10px;
    line-height: 1;
  }
  .vuj-widget-contact-desktop {
    display: none;
    position: fixed;
    bottom: 0;
    left: 0;
    padding: 2rem;
    z-index: 1050;
  }
  .vuj-widget-fly {
    position: relative;
  }
  .vuj-widget-fly-button {
    background: #fe696a;
    border-radius: 50%;
    display: flex;
    font-size: 2rem;
    box-shadow: 2px 5px 20px rgba(0, 0, 0, 0.1);
    padding: 15px;
    border: 0;
    transition: transform .3s;
  }
  .vuj-widget-fly-button i {
    animation: attention 2s linear infinite both;
  }
  .openpopup .vuj-widget-fly-button {
    transform: scale(0.8);
  }
  .openpopup .vuj-widget-fly-button i,
  .vuj-widget-fly-button:hover i {
    animation: none;
  }
  .vuj-widget-contact-desktop-items {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 100%;
    display: none;
    flex-direction: column;
    margin-bottom: 10px;
  }
  .vuj-widget-contact-desktop-item {
    background: #fe696a;
    border-radius: 50%;
    display: flex;
    height: 62px;
    width: 62px;
    animation: popupOrder 0.5s;
  }
  .vuj-widget-contact-desktop-item.vuj-phone {
    background: #8AD336;
  }
  .vuj-widget-contact-desktop-item.vuj-sms {
    background: #FFC044;
  }
  .vuj-widget-contact-desktop-item.vuj-messenger {
    background: #0084ff;
  }
  .vuj-widget-contact-desktop-item.vuj-zalo {
    background: #0573ff;
  }
  .vuj-widget-contact-desktop-item.vuj-maps {
    background: #07D8F8;
  }
  .vuj-widget-contact-desktop-item + .vuj-widget-contact-desktop-item {
    margin-top: 10px;
  }
  .vuj-widget-contact-desktop-item a {
    display: flex;
    color: #ffffff;
    width: 100%;
    height: 100%;
    align-items: center;
    justify-content: center;
    font-size: 1.5rem;
  }
  .openpopup .vuj-widget-contact-desktop-items {
    display: flex;
  }
  @media (max-width: 767px) {
    .page-wrapper {
      padding-bottom: 60px;
    }
  }
  @media (min-width: 768px) {
    .vuj-widget-contact-mobile {
      display: none;
    }
    .vuj-widget-contact-desktop {
      display: flex;
    }
  }
</style>