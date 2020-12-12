function getResponse() {
    $.ajax({
        type: "POST",
        url: '/GetData',
        data: {},
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        beforeSend: function () {
            document.getElementById("TextEditor").value = "Loading...";
        },
        success: function (response) {

            // Looping over employee list and display it  
            $.each(response, function (index, emp) {
                $('TextEditor').append('<p>Id: ' + emp.ID + '</p>');
            });
        },
        complete: function () {
            // Hide loader icon  
        },
        failure: function (jqXHR, textStatus, errorThrown) {
            alert("HTTP Status: " + jqXHR.status + "; Error Text: " + jqXHR.responseText); // Display error message  
        }
    });
} 