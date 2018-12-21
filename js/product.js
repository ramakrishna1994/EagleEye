function checkParams(companyname,consultantname,gstin,pan,iec,tin,email,mobile,deliveryaddress,taxinvoiceaddress) {
    return true;
}


function addnewproduct()
    {

        document.getElementById('productstatus').innerHTML = "<img src='../images/loader.gif' width='40' height='40'>";
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

                        if(response.error == 0){
                           document.getElementById('productstatus').innerHTML = '<p class="text-success">Successfully Added</p>'
                           clearproduct()
                        }
                        else{
                            document.getElementById('productstatus').innerHTML = '<p class="text-danger">'+response.message+'</p>'
                        }


                    }
                });
        });



}

function clearproduct() {
        document.getElementById('productname').value = "";
        document.getElementById('casno').value = "";
        document.getElementById('hsncode').value = "";
}


function getallproducts()
    {

        var filter = document.getElementById('filter').value;

        document.getElementById('productbody').innerHTML = "<tr class='text-center'><td colspan='3'><img src='../images/loader.gif' width='40' height='40'></tr></td>";



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
                        if(response.length == 0){
                            document.getElementById('productbody').innerHTML = '<tr><td colspan="3" class="text-center text-danger">No Products Found</td></tr>';
                        }
                        else{
                            document.getElementById('productbody').innerHTML = innerhtml;
                        }




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


