$('document').ready(function() {
    alerts = {};
    

    window.addEventListener('message', function (event) {
        ShowNotif(event.data);
    });

    function ShowNotif(data) {
            var $notification = CreateNotification(data);
            $('.notif-container').append($notification);
            setTimeout(function() {
                $.when($notification.fadeOut()).done(function() {
                    $notification.remove()
                });
            }, data.length != null ? data.length : 2500);
    }

    function CreateNotification(data) {
       //console.log(data.info.recipientList)
       var $notification = $(document.createElement('div'));
       //$notification.addClass('notification').addClass(data.type);
       $notification.addClass('notification').addClass(data.job);
       //$notification.html(data.text);
       $notification.html('\
       <div class="content">\
       <div id="code">' + data.info.dispatchCode + '</div>\
       <div id="alert-name">' + data.info.dispatchMessage + '</div>\
       <div id="marker"><i class="fas fa-map-marker-alt" aria-hidden="true"></i></div>\
       <div id="alert-info"><i class="fas fa-globe-europe"></i>' + data.info.street + '</div>\
       </div>');
       $notification.fadeIn();
       if (data.style !== undefined) {
           Object.keys(data.style).forEach(function(css) {
               $notification.css(css, data.style[css])
           });
       }
       return $notification;
    }
});

//       <div id="alert-info"><i class="fas fa-globe-europe"></i>' + data.info["loc"] + '</div>\