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

var today = new Date();
var dd = today.getDate();
var mm = today.getMonth(); //January is 0!
var yyyy = today.getFullYear();

$( function() {
    $( "#fromdatesp" ).datepicker({
      dateFormat: "yy-mm-dd"
    });
    $( "#todatesp" ).datepicker({
      dateFormat: "yy-mm-dd"
    });
} );

document.getElementById('fromdatesp').value = (yyyy-1) + '-' + mm +'-' + dd;
document.getElementById('todatesp').value = yyyy + '-' + mm +'-' + dd;;

getsalesandpurchasesdetails();

function getsalesandpurchasesdetails(){
    gettotalpurchasesamount();
    gettotalsalesamount();
    gettotalprofitamount();
}

function gettotalsalesamount()
{



        var fromdate = document.getElementById('fromdatesp').value;
        var todate = document.getElementById('todatesp').value;
        if(checkParams(fromdate,todate) == false)
            return;
        var formData = new FormData();
        formData.append( 'fromdate',fromdate);
        formData.append( 'todate',todate);
        $(document).ready(function(){

                $.ajax({
                    url: "cgi-bin/totalsales.py",// give your url
                    type: "POST",
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response)
                    {

                       document.getElementById('sales').innerHTML = response.sales.toLocaleString('en-IN', {
                                        style: 'currency',
                                        currency: 'INR'
                                    });

                    }
                });
        });

}

function gettotalpurchasesamount()
    {

        var fromdate = document.getElementById('fromdatesp').value;
        var todate = document.getElementById('todatesp').value;
        if(checkParams(fromdate,todate) == false)
            return;
        var formData = new FormData();
        formData.append( 'fromdate',fromdate);
        formData.append( 'todate',todate);
        $(document).ready(function(){

                $.ajax({
                    url: "cgi-bin/totalpurchases.py",// give your url
                    type: "POST",
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response)
                    {

                       document.getElementById('purchases').innerHTML = response.purchases.toLocaleString('en-IN', {
                                        style: 'currency',
                                        currency: 'INR'
                                    });;

                    }
                });
        });
}


function gettotalprofitamount()
    {

        var fromdate = document.getElementById('fromdatesp').value;
        var todate = document.getElementById('todatesp').value;
        if(checkParams(fromdate,todate) == false)
            return;
        var formData = new FormData();
        formData.append( 'fromdate',fromdate);
        formData.append( 'todate',todate);
        $(document).ready(function(){

                $.ajax({
                    url: "cgi-bin/totalprofit.py",// give your url
                    type: "POST",
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response)
                    {

                       document.getElementById('profit').innerHTML = response.profit.toLocaleString('en-IN', {
                                        style: 'currency',
                                        currency: 'INR'
                                    });;

                    }
                });
        });
}
