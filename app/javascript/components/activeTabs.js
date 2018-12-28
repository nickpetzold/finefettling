const toggleActiveTab = (() => {
  if (window.location.href.indexOf("home") > -1) {
      document.querySelector('.home-tab').classList.add('active');
    } else if (window.location.href.indexOf("garage") > -1) {
      document.querySelector('.garage-tab').classList.add('active');
    } else if (window.location.href.indexOf("meetings") > -1) {
      document.querySelector('.meetings-tab').classList.add('active');
    }

})

export { toggleActiveTab };
