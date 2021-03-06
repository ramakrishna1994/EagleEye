function checkParams(companyname,consultantname,gstin,pan,iec,tin,email,mobile,deliveryaddress,taxinvoiceaddress) {
    return true;
}


function addnewcompany()
    {
        document.getElementById('companystatus').innerHTML = "<img src='../images/loader.gif' width='40' height='40'>";
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

                        if(response == 200){
                            document.getElementById('companystatus').innerHTML = '<p class="text-success">Successfully Added</p>'
                           clearcompany()
                        }
                        else{
                            document.getElementById('companystatus').innerHTML = '<p class="text-danger">Problem With Inserting Data!! Please Try Again</p>'
                        }


                    }
                });
        });
}


function clearcompany() {
    document.getElementById('companyname').value = "";
    document.getElementById('consultantname').value = "";
    document.getElementById('gstin').value = "";
    document.getElementById('pan').value = "";
    document.getElementById('iec').value = "";
    document.getElementById('tin').value = "";
    document.getElementById('email').value = "";
    document.getElementById('mobile').value = "";
    document.getElementById('delivery').value = "";
    document.getElementById('taxinvoice').value = "";
}
var trans = 0
function searchcompanies(transaction) {

    $("#companySearchModal").modal('show')
    document.getElementById('companybody').innerHTML = ""
    trans = transaction
}

function getallcompanies()
    {
        document.getElementById('companybody').innerHTML = "<tr><td class='text-center' colspan='2'><img src='../images/loader.gif' width='40' height='40'></tr></td>";
        var filter = document.getElementById('companyfilter').value;

        var formData = new FormData();
        formData.append( 'filter',filter);


        $(document).ready(function(){

                $.ajax({
                    url: "cgi-bin/getallcompanies.py",// give your url
                    type: "POST",
                    dataType: 'json',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response)
                    {
                        var innerhtml = ""
                        for(var i=0;i< response.length;i++){
                            var companyid = response[i].companyid
                            var companyname = response[i].companyname
                            var consultantname = response[i].consultantname

                            if(trans == 1){
                                    innerhtml += '<tr style="cursor: pointer" onclick="updatebuycompany('+companyid+',\''+companyname+'\',\''+consultantname+'\')">' +
                                            '<td>' + companyname + '</td>' +
                                            '<td>' + consultantname + '</td>' +
                                         '</tr>'
                            }
                            else{
                                innerhtml += '<tr style="cursor: pointer" onclick="updatesellcompany('+companyid+',\''+companyname+'\',\''+consultantname+'\')">' +
                                            '<td>' + companyname + '</td>' +
                                            '<td>' + consultantname + '</td>' +
                                         '</tr>'
                            }


                        }
                        if(response.length == 0){
                            document.getElementById('companybody').innerHTML = '<tr><td colspan="2" class="text-center text-danger">No Companies Found</td></tr>';
                        }
                        else{
                            document.getElementById('companybody').innerHTML = innerhtml;
                        }



                    }
                });
        });



}


function updatebuycompany(companyid,companyname,consultantname)
{
    $("#companySearchModal").modal('hide')
    var text = companyname +'\n'+ consultantname
    document.getElementById('buycompanyid').value = companyid
    document.getElementById('buycompany').value = text
}

function updatesellcompany(companyid,companyname,consultantname)
{
    $("#companySearchModal").modal('hide')
    var text = companyname +'\n'+ consultantname
    document.getElementById('sellcompanyid').value = companyid
    document.getElementById('sellcompany').value = text
}

