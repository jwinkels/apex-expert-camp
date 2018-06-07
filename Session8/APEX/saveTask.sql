declare
  r_row OCTB_TASKS%rowtype;
begin
  r_row := octb_tasks_api.read_row(:P110_TASK_ID);
  
  r_row.task_board_id   := :P110_TASK_BOARD_ID;
  r_row.label           := :P110_LABEL;
  r_row.descr           := :P110_DESCR;
  r_row.status_id       := :P110_STATUS_ID;
  r_row.category_id     := :P110_CATEGORY_ID;
  r_row.cost_in_hours   := :P110_COST_IN_HOURS;
  r_row.start_date      := :P110_START_DATE;
  r_row.end_date        := :P110_END_DATE;
  r_row.due_date        := :P110_DUE_DATE;
  r_row.author_id       := :P110_AUTHOR;
  r_row.assignee_id     := :P110_ASSIGNEE;
  r_row.last_update     := sysdate;  
  
  octb_tasks_api.create_or_update_row(r_row);
end;  