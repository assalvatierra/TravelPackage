/* ********************************************************
* By Abel S. Salvatierra
* @2017 - Real Breeze Travel & Tours
* 
*********************************************************** */


var sMsg = "";

$(document).ready(function () {

    $('#btnSubmit1').on('click', function () {
        if (checkvalues() != 1) {
            $('#FormMsg').html(sMsg);
            event.preventDefault();
        }
    });

    $('#btnSubmit2').on('click', function () {
        if (checkvalues() != 1) {
            $('#FormMsg').html(sMsg);
            event.preventDefault();
        }
    });


    InitDatePicker();

    initFieldEvents();
})


function InitDatePicker() {

    $('input[name="JobStart"]').daterangepicker(
    {
        singleDatePicker: true,
        showDropdowns: true,
        locale: {
            format: 'MM/DD/YYYY'
        }
    },
    function (start, end, label) {
        checkvalues();
        validation(start);
    }
    );
}

//unused block
function initFieldEvents() {
    $('#leadguest').on('change', function () {
        checkvalues();
    });
    $('#NoOfAdult').on('change', function () {
        checkvalues();
    });
    $('#guestEmail').on('change', function () {
        checkvalues();
    });

    $('#guestContact').on('change', function () {
        checkvalues();
    });

    $('#Message').on('change', function () {
        checkvalues();
    });
}
//end of unused block

function checkvalues() {
    var isOK = 0;
    
    var leadguest = $('#leadguest').val();
    if (leadguest.trim().length > 0) isOK = 1;
    else {
        isOK = 0;
        sMsg = "Lead Guest is Required";
    }

    if (isOK == 1) {
        var email = $('#guestEmail').val();
        if (email.trim().length > 0) {
            if (validateMail(email)) isOK = 1;
            else {
                isOK = 0;
                sMsg = "Valid Email is required!";
            }
        }
        else {
            isOK = 0;
            sMsg = "Valid Email is required!";
        }
    }

    if (isOK == 1) {
        var NoAdults = $('#NoOfAdult').val();
        if (NoAdults > 0) isOK = 1;
        else {
            isOK = 0;
            sMsg = "Adult is required ( acceptable values: 1 - 999 )";
        }
    }

    return isOK;
}


function validation(startdate) {
    var flag = true;
    var message = "";

    if (!validateDates(startdate)) {
        flag = false;
        message = "Start Date must be 5 days from today";
        console.log("Start Date must be 5 days from today");
    }
   // console.log("flag: " + flag);

    if ($('#guestContact').val() == "") {
        flag = false;
        message = "Contact Number field is empty";
    }

    if (!validatePhone($('#guestContact').val())) {
        flag = false;
        message = "Contact Number is invalid";
        console.log("contact invalid");
    }

    if ($('#guestEmail').val() == "") {
        flag = false;
        message = "Email field is empty";
    }

    if (!validateMail($('#guestEmail').val())) {
        flag = false;
        message = "Email is invalid";
        console.log("email invalid");
    } 

    if ($('#leadguest').val() == "") {
        flag = false;
        message = "Lead Guest field is empty";
    }


    if (flag) {
        $("#btnSubmit1").prop('disabled', false);
        message = "";
        $('#FormMsg').text(message);
    } else {
        $('#FormMsg').text(message);
        $("#btnSubmit1").prop('disabled', true);
    }
}

function validatePhone(txtPhone) {
    var filter = /([0-9]{10})|(\([0-9]{3}\)\s+[0-9]{3}\-[0-9]{4})/;
    if (filter.test(txtPhone)) {
        return true;
    }
    else {
        return false;
    }
}


function validateMail(mail) {
    var filter = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (filter.test(mail)) {
        return true;
    }
    else {
        return false;
    }
}


function validateDates(start) {
    //Check dates
    var datetoday = new Date();
    datetoday = moment(datetoday).format("YYYY-MM-DD");
    var dateAddFive = moment(datetoday, "YYYY-MM-DD").add(5, 'days');
    var startdate = moment(start).format("YYYY-MM-DD");

    //alert(startdate);
    //alert(datetoday); 
    //console.log(start);

    var isafter = moment(startdate).isAfter(dateAddFive);
    //alert(isafter
    console.log(isafter);

    return isafter;

}


$('#leadguest').change(function () {
    validation();
});

$('#guestContact').change(function () {
    validation();
});

$('#guestEmail').change(function () {
    validation();
});
