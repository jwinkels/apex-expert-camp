create sequence OCTB_GROUPS_SEQ;
create sequence OCTB_USERS_SEQ;
/

CREATE OR REPLACE TRIGGER OCTB_GROUPS_TRG_I 
BEFORE INSERT ON OCTB_GROUPS
FOR EACH ROW
BEGIN
  :NEW.GROUP_ID:=OCTB_GROUPS_SEQ.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER OCTB_USERS_TRG_I 
BEFORE INSERT ON OCTB_USERS
FOR EACH ROW
BEGIN
  :NEW.USER_ID:=OCTB_USERS_SEQ.NEXTVAL;
END;
/