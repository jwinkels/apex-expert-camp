declare
  r_row           OCTB_TASK_BOARD%rowtype;
  v_task_board_id OCTB_TASK_BOARD.TASK_BOARD_ID%type;
begin
  r_row.label := :P10_LABEL;
  r_row.DESCR := :P10_DESCR;
  r_row.author_id := octb_users_api.get_pk_by_unique_cols(upper(:APP_USER));
  v_task_board_id := octb_task_board_api.create_row(r_row);
end;  