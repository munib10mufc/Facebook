$(document).ready(function () {

    window.onload = function () {

        $('#Text1').on('change', function () {
            var input = $(this);
            var is_name = input.val();
            if (is_name) {
                input.removeClass("invalid").addClass("valid");
            }
            else {
                input.removeClass("valid").addClass("invalid");
                alertify.error("invalid First Name!");
                xfnam = false;
            }

        });
        $('#Text2').on('change', function () {
            var input = $(this);
            var is_name = input.val();
            if (is_name) {
                input.removeClass("invalid").addClass("valid");
            }
            else {
                input.removeClass("valid").addClass("invalid");
                alertify.error("invalid First Name!");
                xfnam = false;
            }

        });
        $('#Text3').on('change', function () {
            var input = $(this);
            var is_name = input.val();
            if (is_name) {
                input.removeClass("invalid").addClass("valid");
            }
            else {
                input.removeClass("valid").addClass("invalid");
                alertify.error("invalid First Name!");
                xfnam = false;
            }

        });
        $('#Text4').on('change', function () {
            var input = $(this);
            var is_name = input.val();
            if (is_name) {
                input.removeClass("invalid").addClass("valid");
            }
            else {
                input.removeClass("valid").addClass("invalid");
                alertify.error("invalid First Name!");
                xfnam = false;
            }

        });

    };

});