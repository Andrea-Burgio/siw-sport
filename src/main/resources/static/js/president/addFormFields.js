let counter = 1;
function addInput(elementId){
    // Get the options from the existing select elements
    let positionOptions = document.getElementById('position').innerHTML;
    let teamOptions = document.getElementById('teams').innerHTML;

    let newDiv = document.createElement('div');
    newDiv.id = 'row' + counter;
    newDiv.innerHTML =
        "<div class='row g-3'>" +
            "<div class='col-3 mb-4'>" +
                "<label for='position" + (counter + 1) + "'>Position</label>" +
                "<select id='position" + (counter + 1) + "' name='position" + (counter + 1) + "' class='form-control form-control-lg'>" +
                    positionOptions +
                "</select>" +
            "</div>" +
            "<div class='col-3 mb-4'>" +
                "<label for='team" + (counter + 1) + "'>Team</label>" +
                "<select id='team" + (counter + 1) + "' name='team" + (counter + 1) + "' class='form-control form-control-lg'>" +
                    teamOptions +
                "</select>" +
            "</div>" +
            "<div class='col-3 mb-4'>" +
                "<label for='startDate" + (counter + 1) + "'>Start Date</label>" +
                "<input type='date' id='startDate" + (counter + 1) + "' name='startDate" + (counter + 1) + "' class='form-control form-control-lg'>" +
            "</div>" +
            "<div class='col-3 mb-4'>" +
                "<label for='endDate" + (counter + 1) + "'>End Date</label>" +
                "<input type='date' id='endDate" + (counter + 1) + "' name='endDate" + (counter + 1) + "' class='form-control form-control-lg'>" +
            "</div>" +
        "</div>";
    document.getElementById(elementId).appendChild(newDiv);
    counter++;
}

function removeInput(){
    if (counter > 1){
        counter--;
        let element = document.getElementById('row' + counter);
        element.parentNode.removeChild(element);
    }
}