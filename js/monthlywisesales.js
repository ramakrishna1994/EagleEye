var today = new Date();
var dd = today.getDate();
var mm = today.getMonth(); //January is 0!
var yyyy = today.getFullYear();

$(function () {
    $("#fromdate").datepicker({
        dateFormat: "yy-mm-dd"
    });
    $("#todate").datepicker({
        dateFormat: "yy-mm-dd"
    });
});


document.getElementById('fromdate').value = (yyyy - 1) + '-' + mm + '-' + dd;
document.getElementById('todate').value = yyyy + '-' + mm + '-' + dd;


monthlywisesales()

function monthlywisesales() {

    var fromdate = document.getElementById('fromdate').value;
    var todate = document.getElementById('todate').value;

    var formData = new FormData();
    formData.append('fromdate', fromdate);
    formData.append('todate', todate);
    $(document).ready(function () {

        $.ajax({
            url: "cgi-bin/monthlywisesales.py",// give your url
            type: "POST",
            dataType: 'json',
            data: formData,
            processData: false,
            contentType: false,
            success: function (response) {
                linechart(response)


            }
        });
    });
}

function linechart(data) {

    $(function () {
        var seriesData = data
        //var seriesData = [["apple",29.9], ["orange",71.5], ["mango",106.4]];
        $('#linechart').highcharts({
            chart: {
                type: 'area'
            },
            title: {
                text: 'Monthly Wise Sales In Rupees'
            },
            yAxis: {
                title: {
                    text: 'Month-Year'
                },
                labels: {
                    enabled: true,
                    formatter: function () {
                        var d = this.value.toLocaleString('en-IN', {
                            style: 'currency',
                            currency: 'INR'
                        });
                        return d
                    },
                }
            },
            xAxis: {
                tickInterval: 1,
                labels: {
                    enabled: true,
                    formatter: function () {
                        return seriesData[this.value][0]
                    },
                }
            },

            series: [{
                name: 'Sales ',
                data: seriesData
            }]
        });
    });
}