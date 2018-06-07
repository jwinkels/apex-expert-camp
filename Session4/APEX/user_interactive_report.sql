select users.USER_ID,
       users.FIRST_NAME,
       users.LAST_NAME,
       users.PASSWORD,
       groups.LABEL GROUP_NAME,
       case users.IS_ACTIVE
           when 1 then 'Yes'
           else 'No'
       end IS_ACTIVE,
       users.USER_NAME,
       '<i class="fa fa-edit" />' edit
  from OCTB_USERS users join OCTB_GROUPS groups on (users.group_id=groups.group_id)