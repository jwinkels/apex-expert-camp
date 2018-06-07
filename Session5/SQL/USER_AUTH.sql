create or replace package USER_AUTH as

function encrypt  (p_password varchar2) return varchar2;

function authenticate (p_username varchar2, p_password varchar2 ) return boolean;

procedure change_password (p_user_id number, p_password varchar2);

end;
/

create or replace PACKAGE BODY user_auth
is 

 function encrypt (p_password varchar2) return varchar2 
 is 
     v_pw_raw RAW(200);
     v_hashed_pw OCTB_USERS.PASSWORD%TYPE;
     
 begin
     --v_pw_raw:=utl_raw.cast_to_raw(p_password);
     --v_hashed_pw:=utl_raw.cast_to_varchar2(utl_encode.base64_encode(v_pw_raw));
     
    v_hashed_pw := oos_util_crypto.hash_str(
                      p_src => p_password ,
                      p_typ => oos_util_crypto.gc_hash_sh256
                    );
     return v_hashed_pw;
     
 end encrypt;

 function authenticate(p_username varchar2, p_password varchar2) return boolean
 is
   v_hashed_pw OCTB_USERS.PASSWORD%TYPE;
   v_table_pw  OCTB_USERS.PASSWORD%TYPE;
   v_user_id   OCTB_USERS.USER_ID%TYPE;
 begin
    v_hashed_pw := encrypt(p_password);
    v_user_id   := octb_users_api.get_pk_by_unique_cols(p_USER_NAME => upper(p_username));
    v_table_pw  := octb_users_api.get_PASSWORD(v_user_id);
   
    return v_user_id is not null AND v_table_pw = v_hashed_pw AND octb_users_api.get_IS_ACTIVE(v_user_id) = 1 ;
     
 end authenticate;
 
 procedure change_password (p_user_id number, p_password varchar2)
 is 
    v_hashed_pw OCTB_USERS.PASSWORD%TYPE;
 begin
     v_hashed_pw:=encrypt(p_password);
     OCTB_USERS_API.set_password(p_user_id, v_hashed_pw);
 end;
 
 end user_auth;
/