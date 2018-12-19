function checkParams(companyname,consultantname,gstin,pan,iec,tin,email,mobile,deliveryaddress,taxinvoiceaddress) {
    return true;
}


function addnewproduct()
    {

        var productname = document.getElementById('productname').value;
        var casno = document.getElementById('casno').value;
        var hsncode = document.getElementById('hsncode').value;




        var formData = new FormData();
        formData.append( 'productname',productname);
        formData.append( 'casno',casno);
        formData.append( 'hsncode',hsncode);

        $(document).ready(function(){

                $.ajax({
                    url: "cgi-bin/addproduct.py",// give your url
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



function getallproducts()
    {

        var filter = document.getElementById('filter').value;





        var formData = new FormData();
        formData.append( 'filter',filter);


        $(document).ready(function(){

                $.ajax({
                    url: "cgi-bin/getallproducts.py",// give your url
                    type: "POST",
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response)
                    {
                        var innerhtml = ""
                        for(var i=0;i< response.length;i++){
                            var productid = response[i].productid
                            var productname = response[i].productname
                            var casno = response[i].casno
                            var hsncode = response[i].hsncode

                            innerhtml += '<tr style="cursor: pointer" onclick="updateproduct('+productid+',\''+productname+'\',\''+casno+'\',\''+hsncode+'\')">' +
                                            '<td>' + response[i].productname + '</td>' +
                                            '<td>' + response[i].casno + '</td>' +
                                            '<td>' + response[i].hsncode + '</td>' +
                                         '</tr>'

                        }
                        document.getElementById('productbody').innerHTML = innerhtml;


                    }
                });
        });



}


function updateproduct(productid,productname,casno,hsncode)
{
    $("#productSearchModal").modal('hide')
    document.getElementById('pname').value = productname
    document.getElementById('cas').value = casno
    document.getElementById('hsn').value = hsncode
    document.getElementById('pid').value = productid

}


