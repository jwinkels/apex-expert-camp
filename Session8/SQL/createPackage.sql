create or replace PACKAGE OCTB_TASKS_api IS 
  /** 
   * This is the API for the table OCTB_TASKS. 
   *
   * GENERATION OPTIONS 
   * - must be in the lines 5-25 to be reusable by the generator
   * - DO NOT TOUCH THIS until you know what you do - read the
   *   docs under github.com/OraMUC/table-api-generator ;-)
   * <options 
   *   generator="OM_TAPIGEN"
   *   generator_version="0.4.1"
   *   generator_action="COMPILE_API"
   *   generated_at="2018-06-07 14:16:55"
   *   generated_by="JAW"
   *   p_table_name="OCTB_TASKS"
   *   p_reuse_existing_api_params="TRUE"
   *   p_col_prefix_in_method_names="TRUE"
   *   p_enable_insertion_of_rows="TRUE"
   *   p_enable_update_of_rows="TRUE"
   *   p_enable_deletion_of_rows="FALSE"
   *   p_enable_generic_change_log="FALSE"
   *   p_enable_dml_view="FALSE"
   *   p_sequence_name=""/>
   * 
   * This API provides DML functionality that can be easily called from APEX.   
   * Target of the table API is to encapsulate the table DML source code for  
   * security (UI schema needs only the execute right for the API and the 
   * read/write right for the OCTB_TASKS_dml_v, tables can be hidden in 
   * extra data schema) and easy readability of the business logic (all DML is  
   * then written in the same style). For APEX automatic row processing like 
   * tabular forms you can optionally use the OCTB_TASKS_dml_v, which has 
   * an instead of trigger who is also calling the OCTB_TASKS_api.
   */
  ---------------------------------------- 
  FUNCTION row_exists( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN BOOLEAN;
  ---------------------------------------- 
  FUNCTION row_exists_yn( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN VARCHAR2;
  ---------------------------------------- 
  FUNCTION create_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE )
  RETURN OCTB_TASKS."TASK_ID"%TYPE;
  ----------------------------------------
  PROCEDURE create_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE );
  ---------------------------------------- 
  FUNCTION create_row( p_row IN OCTB_TASKS%ROWTYPE )
  RETURN OCTB_TASKS."TASK_ID"%TYPE;
  ---------------------------------------- 
  PROCEDURE create_row( p_row IN OCTB_TASKS%ROWTYPE );
  ---------------------------------------- 
  FUNCTION read_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS%ROWTYPE;
  ---------------------------------------- 
  PROCEDURE read_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_LABEL OUT NOCOPY OCTB_TASKS."LABEL"%TYPE, p_DESCR OUT NOCOPY OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID OUT NOCOPY OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID OUT NOCOPY OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE OUT NOCOPY OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE OUT NOCOPY OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE OUT NOCOPY OCTB_TASKS."START_DATE"%TYPE, p_END_DATE OUT NOCOPY OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS OUT NOCOPY OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID OUT NOCOPY OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID OUT NOCOPY OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID OUT NOCOPY OCTB_TASKS."TASK_BOARD_ID"%TYPE );
  ---------------------------------------- 
  PROCEDURE update_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE );
  ---------------------------------------- 
  PROCEDURE update_row( p_row IN OCTB_TASKS%ROWTYPE );
  ---------------------------------------- 
  FUNCTION create_or_update_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE )
  RETURN OCTB_TASKS."TASK_ID"%TYPE;
  ---------------------------------------- 
  PROCEDURE create_or_update_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE );
  ---------------------------------------- 
  FUNCTION create_or_update_row( p_row IN OCTB_TASKS%ROWTYPE )
  RETURN OCTB_TASKS."TASK_ID"%TYPE;
  ---------------------------------------- 
  PROCEDURE create_or_update_row( p_row IN OCTB_TASKS%ROWTYPE );
  ---------------------------------------- 
  FUNCTION get_LABEL( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."LABEL"%TYPE;
  ---------------------------------------- 
  FUNCTION get_DESCR( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."DESCR"%TYPE;
  ---------------------------------------- 
  FUNCTION get_STATUS_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."STATUS_ID"%TYPE;
  ---------------------------------------- 
  FUNCTION get_CATEGORY_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."CATEGORY_ID"%TYPE;
  ---------------------------------------- 
  FUNCTION get_LAST_UPDATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."LAST_UPDATE"%TYPE;
  ---------------------------------------- 
  FUNCTION get_DUE_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."DUE_DATE"%TYPE;
  ---------------------------------------- 
  FUNCTION get_START_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."START_DATE"%TYPE;
  ---------------------------------------- 
  FUNCTION get_END_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."END_DATE"%TYPE;
  ---------------------------------------- 
  FUNCTION get_COST_IN_HOURS( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."COST_IN_HOURS"%TYPE;
  ---------------------------------------- 
  FUNCTION get_ASSIGNEE_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."ASSIGNEE_ID"%TYPE;
  ---------------------------------------- 
  FUNCTION get_AUTHOR_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."AUTHOR_ID"%TYPE;
  ---------------------------------------- 
  FUNCTION get_TASK_BOARD_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."TASK_BOARD_ID"%TYPE;
  ---------------------------------------- 
  PROCEDURE set_LABEL( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_LABEL IN OCTB_TASKS."LABEL"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_DESCR( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_STATUS_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_CATEGORY_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_LAST_UPDATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_DUE_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_START_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_END_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_COST_IN_HOURS( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_ASSIGNEE_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_AUTHOR_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE );
  ---------------------------------------- 
  PROCEDURE set_TASK_BOARD_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE );
  ---------------------------------------- 
END OCTB_TASKS_api;
/

create or replace PACKAGE BODY OCTB_TASKS_api IS
  ---------------------------------------- 
  FUNCTION row_exists( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN BOOLEAN 
  IS
    v_return BOOLEAN := FALSE;
  BEGIN
    FOR i IN ( SELECT 1 FROM OCTB_TASKS WHERE "TASK_ID" = p_TASK_ID ) LOOP
      v_return := TRUE;
    END LOOP;
    RETURN v_return;
  END;
  ---------------------------------------- 
  FUNCTION row_exists_yn( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN VARCHAR2 
  IS
  BEGIN
    RETURN case when row_exists( p_TASK_ID => p_TASK_ID ) 
             then 'Y'
             else 'N'
           end;
  END;
  ---------------------------------------- 
  FUNCTION create_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE ) 
  RETURN OCTB_TASKS."TASK_ID"%TYPE IS
    v_pk OCTB_TASKS."TASK_ID"%TYPE;
  BEGIN
    v_pk := p_TASK_ID;
    INSERT INTO OCTB_TASKS ( "TASK_ID", "LABEL", "DESCR", "STATUS_ID", "CATEGORY_ID", "LAST_UPDATE", "DUE_DATE", "START_DATE", "END_DATE", "COST_IN_HOURS", "ASSIGNEE_ID", "AUTHOR_ID", "TASK_BOARD_ID" )
      VALUES ( v_pk, p_LABEL, p_DESCR, p_STATUS_ID, p_CATEGORY_ID, p_LAST_UPDATE, p_DUE_DATE, p_START_DATE, p_END_DATE, p_COST_IN_HOURS, p_ASSIGNEE_ID, p_AUTHOR_ID, p_TASK_BOARD_ID )
      RETURN "TASK_ID" INTO v_pk; 
    RETURN v_pk;
  END create_row;
  ----------------------------------------
  PROCEDURE create_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE )
  IS
    v_pk OCTB_TASKS."TASK_ID"%TYPE;
  BEGIN
    v_pk := create_row( p_TASK_ID => p_TASK_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_STATUS_ID => p_STATUS_ID, p_CATEGORY_ID => p_CATEGORY_ID, p_LAST_UPDATE => p_LAST_UPDATE, p_DUE_DATE => p_DUE_DATE, p_START_DATE => p_START_DATE, p_END_DATE => p_END_DATE, p_COST_IN_HOURS => p_COST_IN_HOURS, p_ASSIGNEE_ID => p_ASSIGNEE_ID, p_AUTHOR_ID => p_AUTHOR_ID, p_TASK_BOARD_ID => p_TASK_BOARD_ID );
  END create_row;
  ---------------------------------------- 
  FUNCTION create_row( p_row IN OCTB_TASKS%ROWTYPE ) 
  RETURN OCTB_TASKS."TASK_ID"%TYPE IS
    v_pk OCTB_TASKS."TASK_ID"%TYPE;
  BEGIN
    v_pk := create_row( p_TASK_ID => p_row."TASK_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_STATUS_ID => p_row."STATUS_ID", p_CATEGORY_ID => p_row."CATEGORY_ID", p_LAST_UPDATE => p_row."LAST_UPDATE", p_DUE_DATE => p_row."DUE_DATE", p_START_DATE => p_row."START_DATE", p_END_DATE => p_row."END_DATE", p_COST_IN_HOURS => p_row."COST_IN_HOURS", p_ASSIGNEE_ID => p_row."ASSIGNEE_ID", p_AUTHOR_ID => p_row."AUTHOR_ID", p_TASK_BOARD_ID => p_row."TASK_BOARD_ID" );
    RETURN v_pk;
  END create_row;
  ---------------------------------------- 
  PROCEDURE create_row( p_row IN OCTB_TASKS%ROWTYPE )
  IS
    v_pk OCTB_TASKS."TASK_ID"%TYPE;
  BEGIN
    v_pk := create_row( p_TASK_ID => p_row."TASK_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_STATUS_ID => p_row."STATUS_ID", p_CATEGORY_ID => p_row."CATEGORY_ID", p_LAST_UPDATE => p_row."LAST_UPDATE", p_DUE_DATE => p_row."DUE_DATE", p_START_DATE => p_row."START_DATE", p_END_DATE => p_row."END_DATE", p_COST_IN_HOURS => p_row."COST_IN_HOURS", p_ASSIGNEE_ID => p_row."ASSIGNEE_ID", p_AUTHOR_ID => p_row."AUTHOR_ID", p_TASK_BOARD_ID => p_row."TASK_BOARD_ID" );
  END create_row;
  ---------------------------------------- 
  FUNCTION read_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS%ROWTYPE IS
    CURSOR cur_row_by_pk( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE ) IS
      SELECT * FROM OCTB_TASKS WHERE "TASK_ID" = p_TASK_ID;
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    OPEN cur_row_by_pk( p_TASK_ID );
    FETCH cur_row_by_pk INTO v_row;
    CLOSE cur_row_by_pk;
    RETURN v_row;
  END read_row;
  ---------------------------------------- 
  PROCEDURE read_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_LABEL OUT NOCOPY OCTB_TASKS."LABEL"%TYPE, p_DESCR OUT NOCOPY OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID OUT NOCOPY OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID OUT NOCOPY OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE OUT NOCOPY OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE OUT NOCOPY OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE OUT NOCOPY OCTB_TASKS."START_DATE"%TYPE, p_END_DATE OUT NOCOPY OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS OUT NOCOPY OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID OUT NOCOPY OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID OUT NOCOPY OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID OUT NOCOPY OCTB_TASKS."TASK_BOARD_ID"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN 
      p_LABEL := v_row."LABEL"; p_DESCR := v_row."DESCR"; p_STATUS_ID := v_row."STATUS_ID"; p_CATEGORY_ID := v_row."CATEGORY_ID"; p_LAST_UPDATE := v_row."LAST_UPDATE"; p_DUE_DATE := v_row."DUE_DATE"; p_START_DATE := v_row."START_DATE"; p_END_DATE := v_row."END_DATE"; p_COST_IN_HOURS := v_row."COST_IN_HOURS"; p_ASSIGNEE_ID := v_row."ASSIGNEE_ID"; p_AUTHOR_ID := v_row."AUTHOR_ID"; p_TASK_BOARD_ID := v_row."TASK_BOARD_ID"; 
    END IF;
  END read_row;
  ---------------------------------------- 
  PROCEDURE update_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE )
  IS
    v_row   OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column values really differ
      IF COALESCE( v_row."LABEL", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_LABEL, '@@@@@@@@@@@@@@@' )
      OR COALESCE( v_row."DESCR", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_DESCR, '@@@@@@@@@@@@@@@' )
      OR COALESCE( v_row."STATUS_ID", -999999999999999.999999999999999 ) <> COALESCE( p_STATUS_ID, -999999999999999.999999999999999 )
      OR COALESCE( v_row."CATEGORY_ID", -999999999999999.999999999999999 ) <> COALESCE( p_CATEGORY_ID, -999999999999999.999999999999999 )
      OR COALESCE( v_row."LAST_UPDATE", TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) <> COALESCE( p_LAST_UPDATE, TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) )
      OR COALESCE( v_row."DUE_DATE", TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) <> COALESCE( p_DUE_DATE, TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) )
      OR COALESCE( v_row."START_DATE", TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) <> COALESCE( p_START_DATE, TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) )
      OR COALESCE( v_row."END_DATE", TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) <> COALESCE( p_END_DATE, TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) )
      OR COALESCE( v_row."COST_IN_HOURS", -999999999999999.999999999999999 ) <> COALESCE( p_COST_IN_HOURS, -999999999999999.999999999999999 )
      OR COALESCE( v_row."ASSIGNEE_ID", -999999999999999.999999999999999 ) <> COALESCE( p_ASSIGNEE_ID, -999999999999999.999999999999999 )
      OR COALESCE( v_row."AUTHOR_ID", -999999999999999.999999999999999 ) <> COALESCE( p_AUTHOR_ID, -999999999999999.999999999999999 )
      OR COALESCE( v_row."TASK_BOARD_ID", -999999999999999.999999999999999 ) <> COALESCE( p_TASK_BOARD_ID, -999999999999999.999999999999999 )
      THEN
        UPDATE OCTB_TASKS
           SET "LABEL" = p_LABEL, "DESCR" = p_DESCR, "STATUS_ID" = p_STATUS_ID, "CATEGORY_ID" = p_CATEGORY_ID, "LAST_UPDATE" = p_LAST_UPDATE, "DUE_DATE" = p_DUE_DATE, "START_DATE" = p_START_DATE, "END_DATE" = p_END_DATE, "COST_IN_HOURS" = p_COST_IN_HOURS, "ASSIGNEE_ID" = p_ASSIGNEE_ID, "AUTHOR_ID" = p_AUTHOR_ID, "TASK_BOARD_ID" = p_TASK_BOARD_ID
         WHERE "TASK_ID" = v_row."TASK_ID";
      END IF;
    END IF;
  END update_row;
  ---------------------------------------- 
  PROCEDURE update_row( p_row IN OCTB_TASKS%ROWTYPE )
  IS
  BEGIN
    update_row( p_TASK_ID => p_row."TASK_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_STATUS_ID => p_row."STATUS_ID", p_CATEGORY_ID => p_row."CATEGORY_ID", p_LAST_UPDATE => p_row."LAST_UPDATE", p_DUE_DATE => p_row."DUE_DATE", p_START_DATE => p_row."START_DATE", p_END_DATE => p_row."END_DATE", p_COST_IN_HOURS => p_row."COST_IN_HOURS", p_ASSIGNEE_ID => p_row."ASSIGNEE_ID", p_AUTHOR_ID => p_row."AUTHOR_ID", p_TASK_BOARD_ID => p_row."TASK_BOARD_ID" );
  END update_row;
  ---------------------------------------- 
  FUNCTION create_or_update_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE )
  RETURN OCTB_TASKS."TASK_ID"%TYPE IS
    v_pk OCTB_TASKS."TASK_ID"%TYPE;
  BEGIN
    IF p_TASK_ID IS NULL THEN
      v_pk := create_row( p_TASK_ID => p_TASK_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_STATUS_ID => p_STATUS_ID, p_CATEGORY_ID => p_CATEGORY_ID, p_LAST_UPDATE => p_LAST_UPDATE, p_DUE_DATE => p_DUE_DATE, p_START_DATE => p_START_DATE, p_END_DATE => p_END_DATE, p_COST_IN_HOURS => p_COST_IN_HOURS, p_ASSIGNEE_ID => p_ASSIGNEE_ID, p_AUTHOR_ID => p_AUTHOR_ID, p_TASK_BOARD_ID => p_TASK_BOARD_ID );
    ELSE
      IF row_exists( p_TASK_ID => p_TASK_ID ) THEN
        v_pk := p_TASK_ID;
        update_row( p_TASK_ID => p_TASK_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_STATUS_ID => p_STATUS_ID, p_CATEGORY_ID => p_CATEGORY_ID, p_LAST_UPDATE => p_LAST_UPDATE, p_DUE_DATE => p_DUE_DATE, p_START_DATE => p_START_DATE, p_END_DATE => p_END_DATE, p_COST_IN_HOURS => p_COST_IN_HOURS, p_ASSIGNEE_ID => p_ASSIGNEE_ID, p_AUTHOR_ID => p_AUTHOR_ID, p_TASK_BOARD_ID => p_TASK_BOARD_ID );
      ELSE
        v_pk := create_row( p_TASK_ID => p_TASK_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_STATUS_ID => p_STATUS_ID, p_CATEGORY_ID => p_CATEGORY_ID, p_LAST_UPDATE => p_LAST_UPDATE, p_DUE_DATE => p_DUE_DATE, p_START_DATE => p_START_DATE, p_END_DATE => p_END_DATE, p_COST_IN_HOURS => p_COST_IN_HOURS, p_ASSIGNEE_ID => p_ASSIGNEE_ID, p_AUTHOR_ID => p_AUTHOR_ID, p_TASK_BOARD_ID => p_TASK_BOARD_ID );
      END IF;
    END IF;
    RETURN v_pk;
  END create_or_update_row;
  ---------------------------------------- 
  PROCEDURE create_or_update_row( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASKS."LABEL"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE )
  IS
    v_pk OCTB_TASKS."TASK_ID"%TYPE;
  BEGIN
    v_pk := create_or_update_row( p_TASK_ID => p_TASK_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_STATUS_ID => p_STATUS_ID, p_CATEGORY_ID => p_CATEGORY_ID, p_LAST_UPDATE => p_LAST_UPDATE, p_DUE_DATE => p_DUE_DATE, p_START_DATE => p_START_DATE, p_END_DATE => p_END_DATE, p_COST_IN_HOURS => p_COST_IN_HOURS, p_ASSIGNEE_ID => p_ASSIGNEE_ID, p_AUTHOR_ID => p_AUTHOR_ID, p_TASK_BOARD_ID => p_TASK_BOARD_ID );
  END create_or_update_row;
  ---------------------------------------- 
  FUNCTION create_or_update_row( p_row IN OCTB_TASKS%ROWTYPE )
  RETURN OCTB_TASKS."TASK_ID"%TYPE IS
    v_pk OCTB_TASKS."TASK_ID"%TYPE;
  BEGIN
    v_pk := create_or_update_row( p_TASK_ID => p_row."TASK_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_STATUS_ID => p_row."STATUS_ID", p_CATEGORY_ID => p_row."CATEGORY_ID", p_LAST_UPDATE => p_row."LAST_UPDATE", p_DUE_DATE => p_row."DUE_DATE", p_START_DATE => p_row."START_DATE", p_END_DATE => p_row."END_DATE", p_COST_IN_HOURS => p_row."COST_IN_HOURS", p_ASSIGNEE_ID => p_row."ASSIGNEE_ID", p_AUTHOR_ID => p_row."AUTHOR_ID", p_TASK_BOARD_ID => p_row."TASK_BOARD_ID" );
    RETURN v_pk;
  END create_or_update_row;
  ---------------------------------------- 
  PROCEDURE create_or_update_row( p_row IN OCTB_TASKS%ROWTYPE )
  IS
    v_pk OCTB_TASKS."TASK_ID"%TYPE;
  BEGIN
    v_pk := create_or_update_row( p_TASK_ID => p_row."TASK_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_STATUS_ID => p_row."STATUS_ID", p_CATEGORY_ID => p_row."CATEGORY_ID", p_LAST_UPDATE => p_row."LAST_UPDATE", p_DUE_DATE => p_row."DUE_DATE", p_START_DATE => p_row."START_DATE", p_END_DATE => p_row."END_DATE", p_COST_IN_HOURS => p_row."COST_IN_HOURS", p_ASSIGNEE_ID => p_row."ASSIGNEE_ID", p_AUTHOR_ID => p_row."AUTHOR_ID", p_TASK_BOARD_ID => p_row."TASK_BOARD_ID" );
  END create_or_update_row;
  ---------------------------------------- 
  FUNCTION get_LABEL( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."LABEL"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."LABEL";
  END get_LABEL;
  ---------------------------------------- 
  FUNCTION get_DESCR( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."DESCR"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."DESCR";
  END get_DESCR;
  ---------------------------------------- 
  FUNCTION get_STATUS_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."STATUS_ID"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."STATUS_ID";
  END get_STATUS_ID;
  ---------------------------------------- 
  FUNCTION get_CATEGORY_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."CATEGORY_ID"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."CATEGORY_ID";
  END get_CATEGORY_ID;
  ---------------------------------------- 
  FUNCTION get_LAST_UPDATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."LAST_UPDATE"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."LAST_UPDATE";
  END get_LAST_UPDATE;
  ---------------------------------------- 
  FUNCTION get_DUE_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."DUE_DATE"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."DUE_DATE";
  END get_DUE_DATE;
  ---------------------------------------- 
  FUNCTION get_START_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."START_DATE"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."START_DATE";
  END get_START_DATE;
  ---------------------------------------- 
  FUNCTION get_END_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."END_DATE"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."END_DATE";
  END get_END_DATE;
  ---------------------------------------- 
  FUNCTION get_COST_IN_HOURS( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."COST_IN_HOURS"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."COST_IN_HOURS";
  END get_COST_IN_HOURS;
  ---------------------------------------- 
  FUNCTION get_ASSIGNEE_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."ASSIGNEE_ID"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."ASSIGNEE_ID";
  END get_ASSIGNEE_ID;
  ---------------------------------------- 
  FUNCTION get_AUTHOR_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."AUTHOR_ID"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."AUTHOR_ID";
  END get_AUTHOR_ID;
  ---------------------------------------- 
  FUNCTION get_TASK_BOARD_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE )
  RETURN OCTB_TASKS."TASK_BOARD_ID"%TYPE IS
    v_row    OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    RETURN v_row."TASK_BOARD_ID";
  END get_TASK_BOARD_ID;
  ---------------------------------------- 
  PROCEDURE set_LABEL( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_LABEL IN OCTB_TASKS."LABEL"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."LABEL", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_LABEL, '@@@@@@@@@@@@@@@' ) THEN
        UPDATE OCTB_TASKS
           SET "LABEL" = p_LABEL
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_LABEL;
  ---------------------------------------- 
  PROCEDURE set_DESCR( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_DESCR IN OCTB_TASKS."DESCR"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."DESCR", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_DESCR, '@@@@@@@@@@@@@@@' ) THEN
        UPDATE OCTB_TASKS
           SET "DESCR" = p_DESCR
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_DESCR;
  ---------------------------------------- 
  PROCEDURE set_STATUS_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_STATUS_ID IN OCTB_TASKS."STATUS_ID"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."STATUS_ID", -999999999999999.999999999999999 ) <> COALESCE( p_STATUS_ID, -999999999999999.999999999999999 ) THEN
        UPDATE OCTB_TASKS
           SET "STATUS_ID" = p_STATUS_ID
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_STATUS_ID;
  ---------------------------------------- 
  PROCEDURE set_CATEGORY_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_CATEGORY_ID IN OCTB_TASKS."CATEGORY_ID"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."CATEGORY_ID", -999999999999999.999999999999999 ) <> COALESCE( p_CATEGORY_ID, -999999999999999.999999999999999 ) THEN
        UPDATE OCTB_TASKS
           SET "CATEGORY_ID" = p_CATEGORY_ID
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_CATEGORY_ID;
  ---------------------------------------- 
  PROCEDURE set_LAST_UPDATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_LAST_UPDATE IN OCTB_TASKS."LAST_UPDATE"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."LAST_UPDATE", TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) <> COALESCE( p_LAST_UPDATE, TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) THEN
        UPDATE OCTB_TASKS
           SET "LAST_UPDATE" = p_LAST_UPDATE
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_LAST_UPDATE;
  ---------------------------------------- 
  PROCEDURE set_DUE_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_DUE_DATE IN OCTB_TASKS."DUE_DATE"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."DUE_DATE", TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) <> COALESCE( p_DUE_DATE, TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) THEN
        UPDATE OCTB_TASKS
           SET "DUE_DATE" = p_DUE_DATE
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_DUE_DATE;
  ---------------------------------------- 
  PROCEDURE set_START_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_START_DATE IN OCTB_TASKS."START_DATE"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."START_DATE", TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) <> COALESCE( p_START_DATE, TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) THEN
        UPDATE OCTB_TASKS
           SET "START_DATE" = p_START_DATE
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_START_DATE;
  ---------------------------------------- 
  PROCEDURE set_END_DATE( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_END_DATE IN OCTB_TASKS."END_DATE"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."END_DATE", TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) <> COALESCE( p_END_DATE, TO_DATE( '01.01.1900', 'DD.MM.YYYY' ) ) THEN
        UPDATE OCTB_TASKS
           SET "END_DATE" = p_END_DATE
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_END_DATE;
  ---------------------------------------- 
  PROCEDURE set_COST_IN_HOURS( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_COST_IN_HOURS IN OCTB_TASKS."COST_IN_HOURS"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."COST_IN_HOURS", -999999999999999.999999999999999 ) <> COALESCE( p_COST_IN_HOURS, -999999999999999.999999999999999 ) THEN
        UPDATE OCTB_TASKS
           SET "COST_IN_HOURS" = p_COST_IN_HOURS
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_COST_IN_HOURS;
  ---------------------------------------- 
  PROCEDURE set_ASSIGNEE_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_ASSIGNEE_ID IN OCTB_TASKS."ASSIGNEE_ID"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."ASSIGNEE_ID", -999999999999999.999999999999999 ) <> COALESCE( p_ASSIGNEE_ID, -999999999999999.999999999999999 ) THEN
        UPDATE OCTB_TASKS
           SET "ASSIGNEE_ID" = p_ASSIGNEE_ID
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_ASSIGNEE_ID;
  ---------------------------------------- 
  PROCEDURE set_AUTHOR_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASKS."AUTHOR_ID"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."AUTHOR_ID", -999999999999999.999999999999999 ) <> COALESCE( p_AUTHOR_ID, -999999999999999.999999999999999 ) THEN
        UPDATE OCTB_TASKS
           SET "AUTHOR_ID" = p_AUTHOR_ID
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_AUTHOR_ID;
  ---------------------------------------- 
  PROCEDURE set_TASK_BOARD_ID( p_TASK_ID IN OCTB_TASKS."TASK_ID"%TYPE, p_TASK_BOARD_ID IN OCTB_TASKS."TASK_BOARD_ID"%TYPE )
  IS
    v_row OCTB_TASKS%ROWTYPE;
  BEGIN
    v_row := read_row ( p_TASK_ID => p_TASK_ID );
    IF v_row."TASK_ID" IS NOT NULL THEN
      -- update only, if the column value really differs
      IF COALESCE( v_row."TASK_BOARD_ID", -999999999999999.999999999999999 ) <> COALESCE( p_TASK_BOARD_ID, -999999999999999.999999999999999 ) THEN
        UPDATE OCTB_TASKS
           SET "TASK_BOARD_ID" = p_TASK_BOARD_ID
         WHERE "TASK_ID" = p_TASK_ID;
      END IF;
    END IF;
  END set_TASK_BOARD_ID;
  ---------------------------------------- 
END OCTB_TASKS_api;
/