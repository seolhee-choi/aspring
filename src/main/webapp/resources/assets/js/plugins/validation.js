var Validation = function () {

    return {

        //Validation
        initValidation: function () {
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
                        range: [1, 3]
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
                        required: '???????????? ????????? ????????? ?????????'
                    },
                    phoneno:
                    {
                        required: '???????????? ????????? ?????????'
                    },
                    checkindate:
                    {
                        required: '??????(?????????) ?????? ????????? ????????? ?????????'
                    },
                    checkoutdate:
                    {
                        required: '??????(????????????) ?????? ????????? ????????? ?????????'
                    },
                    adult:
                    {
                        required: '[??????/?????????] ???????????? ????????? ?????????',
                        range: '[??????/?????????]??? {0}??? ??????????????? ?????????.'
                    },
                    privateuse:
                    {
                        required: '???????????? ????????? ?????? ????????? ???????????????.'
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