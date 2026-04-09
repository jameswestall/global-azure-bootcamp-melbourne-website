(function () {
  'use strict';

  var SESSIONIZE_BASE = 'https://sessionize.com/api/v2/zzqx2zwy/view';

  function escapeHtml(str) {
    if (!str) return '';
    var div = document.createElement('div');
    div.appendChild(document.createTextNode(str));
    return div.innerHTML;
  }

  function formatTime(isoString) {
    var date = new Date(isoString);
    return date.toLocaleTimeString('en-AU', {
      hour: 'numeric',
      minute: '2-digit',
      hour12: true
    });
  }

  function renderSpeakers(speakers) {
    var wrapper = document.querySelector('#speakers-slider .swiper-wrapper');
    if (!wrapper) return;

    if (!speakers || speakers.length === 0) {
      wrapper.innerHTML = '<div class="swiper-slide"><p class="text-center">Speaker lineup coming soon.</p></div>';
      return;
    }

    wrapper.innerHTML = speakers.map(function (speaker) {
      var linksHtml = '';
      if (speaker.links && speaker.links.length > 0) {
        linksHtml = speaker.links.map(function (link) {
          var iconClass = 'bi-link-45deg';
          if (link.linkType === 'Twitter') iconClass = 'bi-twitter';
          if (link.linkType === 'LinkedIn') iconClass = 'bi-linkedin';
          if (link.linkType === 'Blog') iconClass = 'bi-globe';
          if (link.linkType === 'Company_Website') iconClass = 'bi-building';
          var safeUrl = /^https?:\/\//i.test(link.url) ? link.url : '#';
          return '<a href="' + escapeHtml(safeUrl) + '" target="_blank" rel="noopener noreferrer"><i class="bi ' + iconClass + '"></i></a>';
        }).join('');
      }

      return '<div class="swiper-slide">' +
        '<div class="speaker" data-aos="fade-up" data-aos-delay="100">' +
        '<img src="' + escapeHtml(speaker.profilePicture) + '" alt="' + escapeHtml(speaker.fullName) + '" class="img-fluid" loading="lazy">' +
        '<div class="details">' +
        '<h3><a href="">' + escapeHtml(speaker.fullName) + '</a></h3>' +
        '<p>' + escapeHtml(speaker.tagLine) + '</p>' +
        '<div class="social">' + linksHtml + '</div>' +
        '</div>' +
        '</div>' +
        '</div>';
    }).join('');

    new Swiper('#speakers-slider', {
      speed: 400,
      loop: true,
      centeredSlides: true,
      autoplay: {
        delay: 5000,
        disableOnInteraction: false
      },
      slidesPerView: 'auto',
      pagination: {
        el: '#speakers-slider .swiper-pagination',
        type: 'bullets',
        clickable: true
      },
      breakpoints: {
        320: { slidesPerView: 1, spaceBetween: 20 },
        575: { slidesPerView: 2, spaceBetween: 20 },
        768: { slidesPerView: 3, spaceBetween: 20 },
        992: { slidesPerView: 5, spaceBetween: 20 }
      }
    });

    AOS.refresh();
  }

  function renderSchedule(sessionGroups) {
    var container = document.querySelector('#schedule-content');
    if (!container) return;

    var sessions = [];
    for (var i = 0; i < sessionGroups.length; i++) {
      sessions = sessions.concat(sessionGroups[i].sessions);
    }
    sessions.sort(function (a, b) {
      return new Date(a.startsAt) - new Date(b.startsAt);
    });

    if (sessions.length === 0) {
      container.innerHTML = '<p class="text-center">Schedule coming soon.</p>';
      return;
    }

    container.innerHTML = sessions.map(function (session) {
      var speakerNames = session.speakers.map(function (s) { return escapeHtml(s.name); }).join(', ');
      return '<div class="row schedule-item">' +
        '<div class="col-md-2"><time>' + formatTime(session.startsAt) + ' - ' + formatTime(session.endsAt) + '</time></div>' +
        '<div class="col-md-10">' +
        '<h4>' + escapeHtml(session.title) + '</h4>' +
        (speakerNames ? '<p><strong>' + speakerNames + '</strong></p>' : '') +
        (session.description ? '<p>' + escapeHtml(session.description) + '</p>' : '') +
        '</div>' +
        '</div>';
    }).join('');

    AOS.refresh();
  }

  function showError(selector, message) {
    var el = document.querySelector(selector);
    if (el) {
      el.innerHTML = '<p class="text-center">' + escapeHtml(message) + '</p>';
    }
  }

  async function init() {
    try {
      var responses = await Promise.all([
        fetch(SESSIONIZE_BASE + '/Speakers'),
        fetch(SESSIONIZE_BASE + '/Sessions')
      ]);

      var speakersRes = responses[0];
      var sessionsRes = responses[1];

      if (speakersRes.ok) {
        var speakers = await speakersRes.json();
        renderSpeakers(speakers);
      } else {
        showError('#speakers-slider .swiper-wrapper', 'Speaker information unavailable — please try again later.');
      }

      if (sessionsRes.ok) {
        var sessions = await sessionsRes.json();
        renderSchedule(sessions);
      } else {
        showError('#schedule-content', 'Schedule unavailable — please try again later.');
      }
    } catch (err) {
      console.error('Failed to load Sessionize data:', err);
      showError('#speakers-slider .swiper-wrapper', 'Speaker information unavailable — please try again later.');
      showError('#schedule-content', 'Schedule unavailable — please try again later.');
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
