/* Write here your custom javascript codes */

var Aspring = function () {
    return {
        initSite: function () {
//            $(document).on("focus", ".phone", function (event) {
//                event.preventDefault();
//                $(this).val($(this).val().replace(/-/g, ''));
//            });

//            $("#detail-expand").click(function( event ){
            $(document).on("click", "#detail-expand", function (event) {
                event.preventDefault();
                var detailTable = $("#detail-table");
                var detailIcon = $("#detail-expand i");
                if (detailTable.hasClass("hidden")) {
                    detailTable.removeClass("hidden");
                    detailIcon.removeClass("glyphicon-chevron-down");
                    detailIcon.addClass("glyphicon-chevron-up");
    //                    $("#detail-expand span").text("상세내역닫기");
    //                    $("span", this).text("상세내역닫기");
                    $(this).children("span").text("상세내역닫기");
                } else {
                    detailTable.addClass("hidden");
                    detailIcon.removeClass("glyphicon-chevron-up");
                    detailIcon.addClass("glyphicon-chevron-down");
                    // 아래 3개 모두 동일하게 작동
    //                    $("#detail-expand span").text("상세내역보기");
    //                    $("span", this).text("상세내역보기");
                    $(this).children("span").text("상세내역보기");
                }
            });

//            $(".aspring-logo").click(function( event ){
            $(document).on("click", "aspring-logo", function (event) {
                event.preventDefault();
                $(location).attr('href', 'http://' + location.host + '/aspring/welcome');
                return false;
            });

//            $("#book-delete").click(function( event ) {
            $(document).on("click", "#book-delete", function (event) {
                event.preventDefault();
                if (!confirm("예약을 정말 삭제하시겠습니까?")) {
                    return false;
                }
                $(this.form).submit();
            });

//            $(".search-book").click(function( event ) {
            $(document).on("click", ".search-book", function (event) {
                event.preventDefault();
                $(this.form).submit();
            });

//            $(".room-book").click(function( event ) {
            $(document).on("click", ".room-book", function (event) {
                event.preventDefault();
                var form = $('#room-book-form');
                $('#room-book-form :input[type=hidden]').each(function(index) {
                    $(this).val($('#book-form :input[name=' + $(this).attr('name') + ']').val());
                });
                $("#room-book-form :input[name=room]").val($(this).attr('href')); //room 다시 한번 입력 (변경된 값으로 전달하기 위해)

                $('#room-book-form').submit();
            });
        }
    };
}();
