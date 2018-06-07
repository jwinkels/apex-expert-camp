declare
    user OCTB_USERS%ROWTYPE;
begin
    if :P910_USER_NAME is not null then
        user:=OCTB_USERS_API.read_row( p_USER_NAME => :P910_USER_NAME );
        :P910_USER_ID:=user.user_id;
        :P910_FIRST_NAME:=user.first_name;
        :P910_LAST_NAME:=user.last_name;
        :P910_USER_GROUP:=user.GROUP_ID;
        :P910_ACTIVATED:=user.is_active;
    else
        :P910_USER_ID:=null;
        :P910_FIRST_NAME:=null;
        :P910_LAST_NAME:=null;
        :P910_USER_GROUP:=null;
        :P910_USER_NAME:=null;
        :P910_ACTIVATED:='N';
    end if;
end;    