function checkParams(companyname,consultantname,gstin,pan,iec,tin,email,mobile,deliveryaddress,taxinvoiceaddress) {
    return true;
}


function addnewcompany()
    {

        var companyname = document.getElementById('companyname').value;
        var consultantname = document.getElementById('consultantname').value;
        var gstin = document.getElementById('gstin').value;
        var pan  = document.getElementById('pan').value;
        var iec = document.getElementById('iec').value;
        var tin = document.getElementById('tin').value;
        var email = document.getElementById('email').value;
        var mobile = document.getElementById('mobile').value;
        var deliveryaddress = document.getElementById('delivery').value;
        var taxinvoiceaddress = document.getElementById('taxinvoice').value;

        if(checkParams(companyname,consultantname,gstin,pan,iec,tin,email,mobile,deliveryaddress,taxinvoiceaddress) == false)
            return;

        var formData = new FormData();
        formData.append( 'companyname',companyname);
        formData.append( 'consultantname',consultantname);
        formData.append( 'gstin',gstin);
        formData.append( 'pan',pan);
        formData.append( 'iec',iec);
        formData.append( 'tin',tin);
        formData.append( 'email',email);
        formData.append( 'mobile',mobile);
        formData.append( 'deliveryaddress',deliveryaddress);
        formData.append( 'taxinvoiceaddress',taxinvoiceaddress);

        $(document).ready(function(){

                $.ajax({
                    url: "cgi-bin/addcompany.py",// give your url
                    type: "POST",
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response)
                    {

                        alert(1);


                    }
                });
        });



    }
