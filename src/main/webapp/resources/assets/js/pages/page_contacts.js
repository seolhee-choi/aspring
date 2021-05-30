var ContactPage = function () {

    return {

        //Basic Map
        initMap: function () {
            var map;
            $(document).ready(function(){
                map = new GMaps({
                    div: '#map',
                    scrollwheel: false,
                    lat: 33.387519,
                    lng: 126.230173,
                    zoom: 15
                });

//			  var marker = map.addMarker({
//                lat: 33.387519,
//                lng: 126.230173,
//	            title: '제주모던펜션 에이스프링'
//		       });

                var marker = map.drawOverlay({
                    lat: 33.387519,
                    lng: 126.230173,
                    content: '<div class="overlay">에이스프링 펜션<div class="overlay_arrow above"></div></div>',
                    verticalAlign: 'top',
                    horizontalAlign: 'center'
                });

                map.addControl({
                    position: 'top_right',
                    content: '제주 모던 펜션 에이스프링',
                    style: {
                        margin: '5px',
                        padding: '1px 6px',
                        border: 'solid 1px #717B87',
                        background: '#fff'
                    },
                    events: {
                        click: function(){
                            console.log(this);
                            //alert('test...');
                        }
                    }
                });

//                map.drawRoute({
//                    origin: [33.506611, 126.493557],
//                    destination: [33.387519, 126.230173],
//                    travelMode: 'transit',
//                    strokeColor: '#131540',
//                    strokeOpacity: 0.6,
//                    strokeWeight: 6
//                });
            });
        },

        //Panorama Map
        initPanorama: function () {
            var panorama;
            $(document).ready(function(){
                panorama = GMaps.createPanorama({
                    el: '#panorama',
                    lat: 33.387519,
                    lng: 126.230173
                });
            });
        }

    };
}();