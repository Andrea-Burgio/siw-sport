"use strict";

const teamTable = new gridjs.Grid({
    columns: [
        {
            name: "Team Id",
            hidden: true
        },
        "Name",
        "Last Name",
        {
            name: "Position",
            formatter: (cell) => {
                let formattedPosition = cell.replace('_', ' ').toLowerCase();
                return formattedPosition.charAt(0).toUpperCase() + formattedPosition.slice(1);
            }
        },
        "Date of Birth",
        "Place of Birth",
        "Team"
    ],
    sort: true,
    search: true,
    resizable: true,
    pagination:{
        limit: 15
    },
    language: {
        'search': {
            'placeholder': 'Filter by name, last name, position, date of birth, place of birth, team…',
            "noRecordsFound": ' ',
            "error": 'An error happened while fetching the data',
        },
    },
    data: async () => {
        let playerPositionTeamDTOs = await axios.get("/players/getPlayerPositionTeamDTO");
        return playerPositionTeamDTOs.data;
    },
}).render(document.getElementById("playersGrid"));