declare
    user OCTB_USERS%ROWTYPE;
    v_user_id OCTB_USERS.USER_ID%TYPE := to_number(:P910_USER_ID);
begin
     if not octb_users_api.row_exists(v_user_id) then
        user.first_name:=:P910_FIRST_NAME;
        user.last_name:=:P910_LAST_NAME;
        user.user_name:=upper(:P910_USER_NAME);
        user.password:=:P910_PASSWORD;
        user.group_id:=:P910_USER_GROUP;
        user.is_active:=:P910_ACTIVATED;
     else
        user:=octb_users_api.read_row(v_user_id);
        user.first_name:=:P910_FIRST_NAME;
        user.last_name:=:P910_LAST_NAME;
        user.user_name:=upper(:P910_USER_NAME);
        user.group_id:=:P910_USER_GROUP;
        user.is_active:=:P910_ACTIVATED;
     end if;
     octb_users_api.create_or_update_row(user);
end;