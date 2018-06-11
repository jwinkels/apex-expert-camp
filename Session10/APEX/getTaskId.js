function getTaskId () {
    var widget = apex.region('tasks').widget(); 
    var grid = widget.interactiveGrid('getViews','grid'); 
    
    //Falls im Grid überhaupt Zeilen ausgewählt sind...
    if (grid.getSelectedRecords().length>0){
        var model = grid.model; 
        var record=grid.getSelectedRecords()[0]; 
        console.log("Found new Task ID:", model.getValue(record,"TASK_ID") );
        return model.getValue(record,"TASK_ID"); 
    }else{
        return 0;
    }
}