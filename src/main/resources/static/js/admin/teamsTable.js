"use strict";
const teamTable = new gridjs.Grid({
    columns: [
        {
            name: "Team Id",
            hidden: true
        },
        "Team name",
        "Foundation year",
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

teamTable.on("rowClick", (...args) =>{
    for (let i=0; i<4; i++)
        console.log(args[1]._cells[i].data)
    document.getElementById("teamId2").value = args[1]._cells[0].data;
    document.getElementById("teamName2").value = args[1]._cells[1].data;
    document.getElementById("foundationYear2").value = args[1]._cells[2].data;
    document.getElementById("officeAddress2").value = args[1]._cells[3].data;
});

