
create sequence OCTB_TASKS_SEQ;
/

CREATE OR REPLACE TRIGGER OCTB_TASKS_TRG_I 
BEFORE INSERT ON OCTB_TASKS
FOR EACH ROW
BEGIN
  :NEW.TASK_ID:=OCTB_TASKS_SEQ.NEXTVAL;
END;
/