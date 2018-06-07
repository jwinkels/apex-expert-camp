SELECT 1
  FROM OCTB_USERS users join OCTB_GROUPS groups using (group_id)
 WHERE groups.label = 'admin'
   AND users.USER_ID = octb_users_api.get_pk_by_unique_cols(p_user_name=>upper(:APP_USER))