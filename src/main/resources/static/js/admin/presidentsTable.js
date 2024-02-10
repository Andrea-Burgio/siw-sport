"use strict";

const presidentsTable = new gridjs.Grid({
    columns: [
        "Id",
        "president"
    ],
    sort: true,
    search: true,
    resizable: true,
    pagination:{
        limit: 5
    },
    language: {
        'search': {
            'placeholder': 'Filter by id, name, last name…',
            "noRecordsFound": ' ',
            "error": 'An error happened while fetching the data',
        },
    },
    data: async () => {
        let noTeamPresidentIdFullNameDTO = await axios.get("/admin/getNoTeamPresidents");
        console.log(noTeamPresidentIdFullNameDTO);
        return noTeamPresidentIdFullNameDTO.data;
    },
}).render(document.getElementById("presidentGrid"));

presidentsTable.on("rowClick", (...args) =>{
    document.getElementById("presidentId").value = args[1]._cells[0].data;
    document.getElementById("president1").value = args[1]._cells[1].data;
})