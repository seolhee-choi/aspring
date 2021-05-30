var FormSupport = function () {

    return {

        init: function () {
            $("#book-form").validate({
                // Rules for form validation
                rules:
                {
                    required:
                    {
                        required: true
                    },
                    email:
                    {
                        required: true,
                        email: true
                    },
                    url:
                    {
                        required: true,
                        url: true
                    },
                    date:
                    {
                        required: true,
                        date: true
                    },
                    min:
                    {
                        required: true,
                        minlength: 5
                    },
                    max:
                    {
                        required: true,
                        maxlength: 5
                    },
                    range:
                    {
                        required: true,
                        rangelength: [5, 10]
                    },
                    digits:
                    {
                        required: true,
                        digits: true
                    },
                    number:
                    {
                        required: true,
                        number: true
                    },
                    minVal:
                    {
                        required: true,
                        min: 5
                    },
                    maxVal:
                    {
                        required: true,
                        max: 100
                    },
                    rangeVal:
                    {
                        required: true,
                        range: [5, 100]
                    },
                    user:
                    {
                        required: true
                    },
                    phoneno:
                    {
                        required: true
                    },
                    checkindate:
                    {
                        required: true
                    },
                    checkoutdate:
                    {
                        required: true
                    },
                    adult:
                    {
                        required: true,
                        range: [1, 4]
                    },
                    privateuse:
                    {
                        required: true
                    }

                },

                // Messages for form validation
                messages:
                {
                    required:
                    {
                        required: 'Please enter something'
                    },
                    email:
                    {
                        required: 'Please enter your email address'
                    },
                    url:
                    {
                        required: 'Please enter your URL'
                    },
                    date:
                    {
                        required: 'Please enter some date'
                    },
                    min:
                    {
                        required: 'Please enter some text'
                    },
                    max:
                    {
                        required: 'Please enter some text'
                    },
                    range:
                    {
                        required: 'Please enter some text'
                    },
                    digits:
                    {
                        required: 'Please enter some digits'
                    },
                    number:
                    {
                        required: 'Please enter some number'
                    },
                    minVal:
                    {
                        required: 'Please enter some value'
                    },
                    maxVal:
                    {
                        required: 'Please enter some value'
                    },
                    rangeVal:
                    {
                        required: 'Please enter some value'
                    },
                    user:
                    {
                        required: '예약자분 성함을 입력해 주세요'
                    },
                    phoneno:
                    {
                        required: '연락 가능한 번호를 입력해 주세요'
                    },
                    checkindate:
                    {
                        required: '입실(체크인) 하실 날짜를 선택해 주세요'
                    },
                    checkoutdate:
                    {
                        required: '퇴실(체크아웃) 하실 날짜를 선택해 주세요'
                    },
                    adult:
                    {
                        required: '[성인/청소년] 인원수를 선택해 주세요',
                        range: '[성인/청소년]은 {0}명 이상이여야 합니다.'
                    },
                    privateuse:
                    {
                        required: '개인정보 활용에 대한 동의가 필요합니다.'
                    }
                },

                // Do not change code below
                errorPlacement: function(error, element)
                {
                    error.insertAfter(element.parent());
                }
            });

            $("#list-form").validate({
                // Rules for form validation
                rules:
                {
                    user:
                    {
                        required: true
                    },
                    phoneno:
                    {
                        required: true
                    }
                },

                // Messages for form validation
                messages:
                {
                    user:
                    {
                        required: '예약시 입력한 성함을 넣어 주세요'
                    },
                    phoneno:
                    {
                        required: '예약시 입력한 연락처를 넣어 주세요'
                    }
                },

                // Do not change code below
                errorPlacement: function(error, element)
                {
                    error.insertAfter(element.parent());
                }
            });
        }
    };
}();