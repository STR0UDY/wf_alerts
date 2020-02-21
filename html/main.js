$('document').ready(function() {
	alerts = {};

    alerts.BaseAlert = function(style, info) {
        switch(style) {
            case 'ems':
               alerts.EMSAlert(info)
            break;
            case 'police':
                alerts.PoPo(info)
            break;
        }
    };

    alerts.PoPo = function(info) {
        
        $('.alerts-wrapper').hide().html('\
        <div class="alerts police">\
        <div class="content">\
        <div id="code">' + info["code"] + '</div>\
        <div id="alert-name">' + info["name"] + '</div>\
        <div id="marker"><i class="fas fa-map-marker-alt" aria-hidden="true"></i></div>\
        <div id="alert-info"><i class="fas fa-globe-europe"></i>' + info["loc"] + '</div>\
        </div>').fadeIn(1000);
        
        setTimeout(HideAlert, 4500);
    };

    alerts.EMSAlert = function(info) {
        //console.log(info["code"])
        $('.alerts-wrapper').html('\
        <div class="alerts ems">\
        <div class="content">\
        <div id="code">' + info["code"] + '</div>\
        <div id="alert-name">' + info["name"] + '</div>\
        <div id="marker"><i class="fas fa-map-marker-alt" aria-hidden="true"></i></div>\
        <div id="alert-info"><i class="fas fa-skull-crossbones"></i> ' + info["loc"] + '</div>\
        </div>');
    };


    function HideAlert() {
        $('.alerts-wrapper').fadeOut(1000);
    };
    
	window.addEventListener('message', function(event) {
		//console.log(event.data.action + " " + event.data.style + " " + event.data.info)
        switch(event.data.action) {
            case 'display':
                //console.log("We've been called for this one")
                alerts.BaseAlert(event.data.style, event.data.info)
            break;
        }
    });
});