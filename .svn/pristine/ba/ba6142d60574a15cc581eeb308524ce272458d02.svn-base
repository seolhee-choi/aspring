var Datepicker = function () {

    return {

        //Datepickers
        initDatepicker: function () {
            // Regular datepicker
            var today = new Date();
            var tomorrow = new Date();
            tomorrow.setDate(tomorrow.getDate()+1);
            $('#date').datepicker({
                dateFormat: 'yy-mm-dd',
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dayNames: ['일','월','화','수','목','금','토'],
                dayNamesShort: ['일','월','화','수','목','금','토'],
                dayNamesMin: ['일','월','화','수','목','금','토'],
                showMonthAfterYear: true,
                yearSuffix: '년',
                prevText: '<i class="fa fa-angle-left"></i>',
                nextText: '<i class="fa fa-angle-right"></i>'
            });

            // Date range
            $('#checkindate').datepicker({
                dateFormat: 'yy-mm-dd',
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dayNames: ['일','월','화','수','목','금','토'],
                dayNamesShort: ['일','월','화','수','목','금','토'],
                dayNamesMin: ['일','월','화','수','목','금','토'],
                showMonthAfterYear: true,
                yearSuffix: '년',
                minDate: today,
                prevText: '<i class="fa fa-angle-left"></i>',
                nextText: '<i class="fa fa-angle-right"></i>',
                onSelect: function( selectedDate )
                {
                    var date = $(this).datepicker('getDate');
                    date.setDate(date.getDate()+1);
                    $('#checkoutdate').datepicker('option', 'minDate', date);
                }
            });
            $('#checkoutdate').datepicker({
                dateFormat: 'yy-mm-dd',
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dayNames: ['일','월','화','수','목','금','토'],
                dayNamesShort: ['일','월','화','수','목','금','토'],
                dayNamesMin: ['일','월','화','수','목','금','토'],
                showMonthAfterYear: true,
                yearSuffix: '년',
                minDate: tomorrow,
                prevText: '<i class="fa fa-angle-left"></i>',
                nextText: '<i class="fa fa-angle-right"></i>',
                onSelect: function( selectedDate )
                {
                    var date = $(this).datepicker('getDate');
                    date.setDate(date.getDate()-1);
                    $('#checkindate').datepicker('option', 'maxDate', date);
                }
            });

            // Inline datepicker
            $('#inline').datepicker({
                dateFormat: 'yy-mm-dd',
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dayNames: ['일','월','화','수','목','금','토'],
                dayNamesShort: ['일','월','화','수','목','금','토'],
                dayNamesMin: ['일','월','화','수','목','금','토'],
                showMonthAfterYear: true,
                yearSuffix: '년',
                prevText: '<i class="fa fa-angle-left"></i>',
                nextText: '<i class="fa fa-angle-right"></i>'
            });

            // Inline date range
            $('#inline-start').datepicker({
                dateFormat: 'yy-mm-dd',
                prevText: '<i class="fa fa-angle-left"></i>',
                nextText: '<i class="fa fa-angle-right"></i>',
                onSelect: function( selectedDate )
                {
                    $('#inline-finish').datepicker('option', 'minDate', selectedDate);
                }
            });
            $('#inline-finish').datepicker({
                dateFormat: 'yy-mm-dd',
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dayNames: ['일','월','화','수','목','금','토'],
                dayNamesShort: ['일','월','화','수','목','금','토'],
                dayNamesMin: ['일','월','화','수','목','금','토'],
                showMonthAfterYear: true,
                yearSuffix: '년',
                prevText: '<i class="fa fa-angle-left"></i>',
                nextText: '<i class="fa fa-angle-right"></i>',
                onSelect: function( selectedDate )
                {
                    $('#inline-start').datepicker('option', 'maxDate', selectedDate);
                }
            });
        }

    };
}();