function addorder() {

    document.getElementById('orderstatus').innerHTML = "<img src='../images/loader.gif' width='40' height='40'>";
    $("html, body").animate({ scrollTop: 0 }, 500);
    var pocompanyid = document.getElementById('buycompanyid').value;
    var ponumber = document.getElementById('ponumber').value;
    var podate = document.getElementById('podate').value;
    var poinsurance = document.getElementById('poinsurance').value;
    var potransportation = document.getElementById('potransportation').value;
    var podelivery = document.getElementById('podelivery').value;
    var popayment = document.getElementById('popayment').value;

    var taxinvoicecompanyid = document.getElementById('sellcompanyid').value;
    var taxinvoicenumber = document.getElementById('taxinvoicenumber').value;
    var taxinvoicedate = document.getElementById('taxinvoicedate').value;
    var taxinvoiceponumber = document.getElementById('taxinvoiceponumber').value;
    var taxinvoicepodate = document.getElementById('taxinvoicepodate').value;
    var taxinvoicetransportation = document.getElementById('taxinvoicetransportation').value;
    var taxinvoicedelivery = document.getElementById('taxinvoicedelivery').value;
    var taxinvoicepayment = document.getElementById('taxinvoicepayment').value;

    var productid = document.getElementById('pid').value;

    var bunits = document.getElementById('bunits').value;
    var bpkts = document.getElementById('bpkts').value;
    var bqty = document.getElementById('bqty').value;
    var brate = document.getElementById('brate').value;
    var btotal = document.getElementById('btotal').value;
    var bfreight = document.getElementById('bfreight').value;
    var btotalbeforetax = document.getElementById('btotalbeforetax').value;
    var bigst = document.getElementById('bigst').value;
    var bcgst = document.getElementById('bcgst').value;
    var bsgst = document.getElementById('bsgst').value;
    var bgrandtotal = document.getElementById('bgrandtotal').value;

    var sunits = document.getElementById('sunits').value;
    var spkts = document.getElementById('spkts').value;
    var sqty = document.getElementById('sqty').value;
    var srate = document.getElementById('srate').value;
    var stotal = document.getElementById('stotal').value;
    var sfreight = document.getElementById('sfreight').value;
    var stotalbeforetax = document.getElementById('stotalbeforetax').value;
    var sigst = document.getElementById('sigst').value;
    var scgst = document.getElementById('scgst').value;
    var ssgst = document.getElementById('ssgst').value;
    var sgrandtotal = document.getElementById('sgrandtotal').value;



    var formData = new FormData();
    formData.append( 'pocompanyid',pocompanyid);
    formData.append( 'ponumber',ponumber);
    formData.append( 'podate',podate);
    formData.append( 'poinsurance',poinsurance);
    formData.append( 'potransportation',potransportation);
    formData.append( 'podelivery',podelivery);
    formData.append( 'popayment',popayment);

    formData.append( 'taxinvoicecompanyid',taxinvoicecompanyid);
    formData.append( 'taxinvoicenumber',taxinvoicenumber);
    formData.append( 'taxinvoicedate',taxinvoicedate);
    formData.append( 'taxinvoiceponumber',taxinvoiceponumber);
    formData.append( 'taxinvoicepodate',taxinvoicepodate);
    formData.append( 'taxinvoicetransportation',taxinvoicetransportation);
    formData.append( 'taxinvoicedelivery',taxinvoicedelivery);
    formData.append( 'taxinvoicepayment',taxinvoicepayment);

    formData.append( 'productid',productid);

    formData.append( 'bunits',bunits);
    formData.append( 'bpkts',bpkts);
    formData.append( 'bqty',bqty);
    formData.append( 'brate',brate);
    formData.append( 'btotal',btotal);
    formData.append( 'bfreight',bfreight);
    formData.append( 'btotalbeforetax',btotalbeforetax);
    formData.append( 'bigst',bigst);
    formData.append( 'bcgst',bcgst);
    formData.append( 'bsgst',bsgst);
    formData.append( 'bgrandtotal',bgrandtotal);

    formData.append( 'sunits',sunits);
    formData.append( 'spkts',spkts);
    formData.append( 'sqty',sqty);
    formData.append( 'srate',srate);
    formData.append( 'stotal',stotal);
    formData.append( 'sfreight',sfreight);
    formData.append( 'stotalbeforetax',stotalbeforetax);
    formData.append( 'sigst',sigst);
    formData.append( 'scgst',scgst);
    formData.append( 'ssgst',ssgst);
    formData.append( 'sgrandtotal',sgrandtotal);

    $(document).ready(function(){

        $.ajax({
            url: "cgi-bin/addorder.py",// give your url
            type: "POST",
            dataType: 'json',
            data: formData,
            processData: false,
            contentType: false,
            success: function (response)
            {
                if(response == 200){
                    document.getElementById('orderstatus').innerHTML = '<p class="text-success">Successfully Inserted Into Database</p>';
                    clearorder();
                }
                else{
                    document.getElementById('orderstatus').innerHTML = '<p class="text-danger">Problem With Inserting Order!! Please Try Again</p>';
                }

            }
        });
    });

}


function clearorder() {

    document.getElementById('buycompanyid').value = "";
    document.getElementById('ponumber').value = "";
    document.getElementById('podate').value = "";
    document.getElementById('poinsurance').value = "";
    document.getElementById('potransportation').value = "";
    document.getElementById('podelivery').value = "";
    document.getElementById('popayment').value = "";

    document.getElementById('sellcompanyid').value = "";
    document.getElementById('taxinvoicenumber').value = "";
    document.getElementById('taxinvoicedate').value = "";
    document.getElementById('taxinvoiceponumber').value = "";
    document.getElementById('taxinvoicepodate').value = "";
    document.getElementById('taxinvoicetransportation').value = "";
    document.getElementById('taxinvoicedelivery').value = "";
    document.getElementById('taxinvoicepayment').value = "";

    document.getElementById('pid').value = "";

    document.getElementById('bunits').value = "";
    document.getElementById('bpkts').value = "";
    document.getElementById('bqty').value = "";
    document.getElementById('brate').value = "";
    document.getElementById('btotal').value = "";
    document.getElementById('bfreight').value = "";
    document.getElementById('btotalbeforetax').value = "";
    document.getElementById('bigst').value = "";
    document.getElementById('bcgst').value = "";
    document.getElementById('bsgst').value = "";
    document.getElementById('bgrandtotal').value = "";

    document.getElementById('sunits').value = "";
    document.getElementById('spkts').value = "";
    document.getElementById('sqty').value = "";
    document.getElementById('srate').value = "";
    document.getElementById('stotal').value = "";
    document.getElementById('sfreight').value = "";
    document.getElementById('stotalbeforetax').value = "";
    document.getElementById('sigst').value = "";
    document.getElementById('scgst').value = "";
    document.getElementById('ssgst').value = "";
    document.getElementById('sgrandtotal').value = "";

    document.getElementById('pname').value = "";
    document.getElementById('cas').value = "";
    document.getElementById('hsn').value = "";

    document.getElementById('sellcompany').value = "";
    document.getElementById('buycompany').value = "";

}