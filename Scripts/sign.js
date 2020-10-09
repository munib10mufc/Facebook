$(document).ready(function () {

    window.onload = function () {

        $('#contact_fname').on('change', function () {
            var input = $(this);
            var is_name = input.val();
            if (is_name) { input.removeClass("invalid").addClass("valid"); }
            else {
                input.removeClass("valid").addClass("invalid");

                alertify.error("invalid First Name!");
            }

        });


        $('#contact_lname').on('change', function () {
            var input = $(this);
            var is_name = input.val();
            if (is_name) { input.removeClass("invalid").addClass("valid"); }
            else {
                input.removeClass("valid").addClass("invalid");
                alertify.error("invalid Last name!");
            }
        });

        $('#contact_email').on('change', function () {
            var input = $(this);
            var re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            var is_email = re.test(input.val());
            if (is_email) { input.removeClass("invalid").addClass("valid"); }
            else
            {
                input.removeClass("valid").addClass("invalid");
                alertify.error("invalid Email or phone number");
            }
        });


        $('#contact_Remail').on('change', function () {
            var input = $(this);
            var re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            var is_email = re.test(input.val());
            if (is_email) {
                if ($('#contact_email').val() == $('#contact_Remail').val()) {
                    input.removeClass("invalid").addClass("valid");
                }
                else {
                    alertify.error("Email address not matched!");
                    input.removeClass("valid").addClass("invalid");
                }

            }
            else {
                input.removeClass("valid").addClass("invalid");
            }
        });
    };

});