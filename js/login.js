function checkParams(username,password) {
    if(username == ""){
        alert(1);
        return;
    }
    if(password == ""){
        alert(2);
        return;
    }

}


function login()
    {

        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;
        if(checkParams(username,password) == false)
            return;
        var formData = new FormData();
        formData.append( 'username',username);
        formData.append( 'password',password);
        $(document).ready(function(){

                $.ajax({
                    url: "cgi-bin/login.py",// give your url
                    type: "POST",
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response)
                    {
                        if(response.error == false)
                        {
                            window.location.href = 'dashboard.html';
                        }
                        else
                        {
                            document.getElementById('alert').innerHTML = '<center>'+response.message+'</center>'
                        }

                    }
                });
        });



    }
