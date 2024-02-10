"use strict";

/*Teams table*/
const teamTable = new gridjs.Grid({
    columns: [
        {
            name: "Team Id",
            hidden: true
        },
        "Team Name",
        "Foundation year",
        "President",
        "Office address"
    ],
    sort: true,
    search: true,
    resizable: true,
    pagination:{
        limit: 5
    },
    language: {
        'search': {
            'placeholder': 'Filter by name, foundation year, president, or address…',
            "noRecordsFound": ' ',
            "error": 'An error happened while fetching the data',
        },
    },
    data: async () => {
        let teamPresidentDTOs = await axios.get("/teams/getTeamPresidentDTO");
        return teamPresidentDTOs.data;
    },
}).render(document.getElementById("teamsGrid"));

/*Players table*/
const playerTable = new gridjs.Grid({
    columns: [
        "Name",
        "Last name",
        {
            name: "Position",
            formatter: (cell) => {
                let formattedPosition = cell.replace('_', ' ').toLowerCase();
                return formattedPosition.charAt(0).toUpperCase() + formattedPosition.slice(1);
            }
        }
    ],
    sort: true,
    search: true,
    resizable: true,
    pagination: {
        limit: 8
    },
    language: {
        "search": {
            "placeholder": "Filter by name, last name, or position…"
        },
        "noRecordsFound": ' ',
        "error": 'An error happened while fetching the data',
    },
    data: []
}).render(document.getElementById("playersGrid"));


teamTable.on("rowClick", async (...args) => {
    console.log("row: " + JSON.stringify(args), args);
    console.log(args[1]._cells[0].data);

    let teamId = args[1]._cells[0].data //data from the first hidden column (id) of the row that was clicked
    let response = await axios.get("/players/getPlayerPositionDTOByTeamId?teamId=" + teamId);
    let players = response.data;
    console.log(players);

    playerTable.updateConfig({
        data: players
    }).forceRender();
});