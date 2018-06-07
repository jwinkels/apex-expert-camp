with tasks_pivot as (
  SELECT * FROM (
    SELECT
      task_id,
      task_board_id,
      status_id   
    FROM OCTB_TASKS
  )  
  PIVOT 
  (
    count(task_id)
    FOR status_id
    IN ( 1 as CREATED, 2 as IN_WORK,3 as DONE)
  )
)  
SELECT 
       b.label         as card_title, 
       b.task_board_id as card_subtitle,
       b.descr         as card_text,
       
       APEX_PAGE.GET_URL (
        p_application        => :APP_ID,
        p_page               => 100,
        p_items              => 'P0_TASK_BOARD_ID',
        p_values             => b.task_board_id
       )    as card_link, 
       'fa-clipboard-list' as card_icon, 
       'Tasks: '
       || to_char(coalesce(t.CREATED,0),'999G999G990') || ' open, '
       || to_char(coalesce(t.IN_WORK,0),'999G999G990') || ' in work, '
       || to_char(coalesce(t.DONE,0),'999G999G990') || ' done. '       as card_subtext 
FROM OCTB_TASK_BOARD b
LEFT JOIN tasks_pivot t    
ON b.task_board_id = t.task_board_id
where b.author_id = octb_users_api.get_pk_by_unique_cols( p_USER_NAME => upper(:APP_USER) )
order by b.label