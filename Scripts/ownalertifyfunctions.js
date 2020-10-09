$(document).ready(function () 
{
    var xem=true,xemform=true,xpassform=true,xpass=true,xfnam=true,xlnam=true;
    window.onload = function () 
    {
        xem=true,xemform=true,xpassform=true,xpass=true,xfnam=true,xlnam=true;
        function loginsuccessful()
        {
            alert("successful");
        }

        var xem=true,xpass=true,xfnam=true,xlnam=true;
        $('#checkbox').on('change', function () 
        {
            var input = $(this);
            var re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            var is_email = re.test(input.val());
            if (is_email) { input.removeClass("invalid").addClass("valid"); }
            else
            {
                input.removeClass("valid").addClass("invalid");
                alertify.error("Invalid Email id");
                xem=false;
            }
        });

        $('#checkbox1').on('change', function ()
        {
            var input = $(this);
            var is_password = input.val();

            if (is_password.match(/[a-zA-Z]/) && is_password.match(/[0-9]/) && is_password.match(/([,,\,;,:,/,.,!,%,&,@,#,$,^,*,?,_,~])/))
            {
                input.removeClass("invalid").addClass("valid");
            }
            else 
            {
                input.removeClass("valid").addClass("invalid");
                alertify.error("Password Format not matched ");
                xpass=false;
            }
        });


        $('.alphaonly').keypress(function (e) 
        {
            if ((e.which < 65 || e.which > 90) && (e.which < 97 || e.which > 122)) {
                return false;
            }
            return true;
        });


        $('#contact_fname').on('change', function () 
        {
            var input = $(this);
            var is_name = input.val();
            if (is_name)
            {
                input.removeClass("invalid").addClass("valid"); 
            }
            else 
            {
                input.removeClass("valid").addClass("invalid");
				$('#criticalcheck').hide();
                alertify.error("invalid First Name!");
                xfnam=false;
            }

        });

        

        $('#contact_lname').on('change', function () 
        {
            var input = $(this);
            var is_name = input.val();
            if (is_name)
            { 
                input.removeClass("invalid").addClass("valid"); 
            }
            else 
            {
			$('#criticalcheck').hide();
                input.removeClass("valid").addClass("invalid");
                alertify.error("invalid Last name!");
                xlnam=false;
            }
        });

        $('#contact_email').on('change', function ()
        {
            var input = $(this);
            var re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            var is_email = re.test(input.val());
            if (is_email) { input.removeClass("invalid").addClass("valid"); }
            else
            {
			$('#criticalcheck').hide();
                input.removeClass("valid").addClass("invalid");
                alertify.error("invalid Email or phone number");
                xemform=false;
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
                else 
                {
				$('#criticalcheck').hide();
                    alertify.error("Email address not matched!");
                    input.removeClass("valid").addClass("invalid");
                    xemform=false;
                }

            }
            else {
                input.removeClass("valid").addClass("invalid");
            }
        });

        

        $('#checkbox1122').on('change', function () {
            var input = $(this);
            var re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            var is_email = re.test(input.val());
            if (is_email) { input.removeClass("invalid").addClass("valid"); }
            else
            {
			$('#criticalcheck').hide();
                alertify.error("Invalid Email format");
                input.removeClass("valid").addClass("invalid");
                xem=false;
            }
        });



        


       //$('#loginImage').on('click', function () {
       //    var input = $(this);
       //    if ((xfnam == true) && (xlnam == true) && (xemform == true) && (xpassform == true)) {
       //        PageMethods.getvalues();
       //    }
       //});

        $('#contact_Password').on('change', function () {
            var input = $(this);
            var is_password = input.val();

            if (is_password.match(/[a-zA-Z]/) && is_password.match(/[0-9]/) && is_password.match(/([,,\,;,:,/,.,!,%,&,@,#,$,^,*,?,_,~])/)) {
                input.removeClass("invalid").addClass("valid");
            }
            else
            {
			$('#criticalcheck').hide();
                input.removeClass("valid").addClass("invalid");
                alertify.error("Password must contain alphabets+numerics+special characters");
            }
        });

    };

});