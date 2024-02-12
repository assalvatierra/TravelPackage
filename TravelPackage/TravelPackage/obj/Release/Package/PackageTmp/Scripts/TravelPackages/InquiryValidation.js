
//adult count validation
$(document).ready(function () {
    var noAdults = $('#NoOfAdult').val();
    if (noAdults == 0) {
        $('#NoOfAdult').val(1);
    }

    if ($('#leadguest').val() == "") {
        $("#btnSubmit1").prop('disabled', true);
    }
    if ($('#guestContact').val() == "") {
        $("#btnSubmit1").prop('disabled', true);
    }
    if ($('#guestEmail').val() == "") {
        $("#btnSubmit1").prop('disabled', true);
    }


});

$('#NoOfAdult').change(function () {
    var noAdults = $('#NoOfAdult').val();
    if (noAdults == 0) {
        $('#NoOfAdult').val(1);
    }
});

$('#NoOfChild').change(function () {
    var noChild = $('#NoOfChild').val();
    if (noChild == 0) {
        $('#NoOfChild').val(0);
    }
});

function validation() {
    var flag = true;
    var message = "";


    if ($('#guestContact').val() == "") {
        flag = false;
        message = "Contact Number field is empty";
    }

    if (!validatePhone($('#guestContact').val())) {
        flag = false;
        message = "Contact Number is invalid";
        console.log("contact invalid");
    } else {
        message = "";
    }

    if ($('#guestEmail').val() == "") {
        flag = false;
        message = "Email field is empty";
    }

    if (!validateMail($('#guestEmail').val())) {
        flag = false;
        message = "Email is invalid";
        console.log("email invalid");
    } else {
        message = "";
    }

    if ($('#leadguest').val() == "") {
        flag = false;
        message = "Lead Guest field is empty";
    }

    if (!validateDates()) {
        flag = false;
        message = "Start Date must be 5 days from today";
    }
    console.log("flag: " + flag);

    if (flag) {
        $("#btnSubmit1").prop('disabled', false);
        message = "";
        $('#FormMsg').text(message);
    } else {
        $('#FormMsg').text(message);
        $("#btnSubmit1").prop('disabled', true);
    }



}

function validateDates() {
    //Check dates
    var start = $('input[name="JobStart"]').val();

    var datetoday = new Date();
    datetoday = moment(datetoday).format("YYYY-MM-DD");
    var dateAddFive = moment(datetoday, "YYYY-MM-DD").add(5, 'days');
    var startdate = moment(start).format("YYYY-MM-DD");

    //alert(startdate);
    //alert(datetoday); 
    //console.log(start);

    var isafter = moment(startdate).isAfter(dateAddFive);
    alert(isafter);

    return isafter;

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

$('#leadguest').change(function () {
    validation();
});

$('#guestContact').change(function () {
    validation();
});

$('#guestEmail').change(function () {
    validation();
});
