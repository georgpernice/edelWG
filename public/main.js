  let CORRECTION = 50;  // height of the navbar 
  let DELAY_READING = 4000; // 4 seconds = 4000; 10 seconds = 10000
  let DELAY_SCROLLING = 1500;

  let links = ['#section-imgs', '#section-events', '#section-expenses', '#section-memes', '#section-contrib'];
  let timerId = 0;

  delayLinks(0);

  // Stop autoscroll when clicking "Stop"
  let stopLink = document.querySelector('#section-stop a');
  if (stopLink) {
    stopLink.addEventListener('click', function(event) { 
      event.preventDefault();
      clearTimeout(timerId); 
    });
  }

  // Scroll when clicking navbar links
  let navbarLinks = document.querySelectorAll('#navbar-1 li a');
  navbarLinks.forEach(function(anchor) {
    anchor.addEventListener('click', function(event) {
      event.preventDefault();
      scrollToLink(this.getAttribute('href'));
    });
  });

  function delayLinks(i) {
    if (i >= links.length) i = 0;
    scrollToLink(links[i]);

    let next = (i === links.length - 1 ? 0 : i + 1);
    timerId = setTimeout(function() { delayLinks(next); }, DELAY_READING); 
  }

  function scrollToLink(link) {
    let selectLink = document.querySelector(link);
    if (selectLink) {
      let top = selectLink.getBoundingClientRect().top + window.scrollY - CORRECTION;
      window.scrollTo({
        top: top,
        behavior: 'smooth'
      });
    } else {
      console.log('The link is not found: ' + link);
    }
  }
