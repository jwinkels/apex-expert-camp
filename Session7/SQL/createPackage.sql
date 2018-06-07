create or replace PACKAGE OCTB_TASK_BOARD_api IS  
  /**  
   * This is the API for the table OCTB_TASK_BOARD.  
   * 
   * GENERATION OPTIONS  
   * - must be in the lines 5-25 to be reusable by the generator 
   * - DO NOT TOUCH THIS until you know what you do - read the 
   *   docs under github.com/OraMUC/table-api-generator ;-) 
   * <options  
   *   generator="OM_TAPIGEN" 
   *   generator_version="0.4.1" 
   *   generator_action="COMPILE_API" 
   *   generated_at="2018-05-18 12:34:29" 
   *   generated_by="BES" 
   *   p_table_name="OCTB_TASK_BOARD" 
   *   p_reuse_existing_api_params="TRUE" 
   *   p_col_prefix_in_method_names="TRUE" 
   *   p_enable_insertion_of_rows="TRUE" 
   *   p_enable_update_of_rows="TRUE" 
   *   p_enable_deletion_of_rows="TRUE" 
   *   p_enable_generic_change_log="FALSE" 
   *   p_enable_dml_view="FALSE" 
   *   p_sequence_name=""/> 
   *  
   * This API provides DML functionality that can be easily called from APEX.    
   * Target of the table API is to encapsulate the table DML source code for   
   * security (UI schema needs only the execute right for the API and the  
   * read/write right for the OCTB_TASK_BOARD_dml_v, tables can be hidden in  
   * extra data schema) and easy readability of the business logic (all DML is   
   * then written in the same style). For APEX automatic row processing like  
   * tabular forms you can optionally use the OCTB_TASK_BOARD_dml_v, which has  
   * an instead of trigger who is also calling the OCTB_TASK_BOARD_api. 
   */ 
  ----------------------------------------  
  FUNCTION row_exists( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN BOOLEAN; 
  ----------------------------------------  
  FUNCTION row_exists_yn( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN VARCHAR2; 
  ----------------------------------------  
  FUNCTION get_pk_by_unique_cols( p_LABEL OCTB_TASK_BOARD."LABEL"%TYPE ) 
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  ----------------------------------------  
  FUNCTION create_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  ---------------------------------------- 
  PROCEDURE create_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ); 
  ----------------------------------------  
  FUNCTION create_row( p_row IN OCTB_TASK_BOARD%ROWTYPE ) 
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  ----------------------------------------  
  PROCEDURE create_row( p_row IN OCTB_TASK_BOARD%ROWTYPE ); 
  ----------------------------------------  
  FUNCTION read_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD%ROWTYPE; 
  ----------------------------------------  
  PROCEDURE read_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE, p_LABEL OUT NOCOPY OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR OUT NOCOPY OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID OUT NOCOPY OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ); 
  ----------------------------------------  
  FUNCTION read_row( p_LABEL OCTB_TASK_BOARD."LABEL"%TYPE ) 
  RETURN OCTB_TASK_BOARD%ROWTYPE; 
  ----------------------------------------  
  PROCEDURE update_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ); 
  ----------------------------------------  
  PROCEDURE update_row( p_row IN OCTB_TASK_BOARD%ROWTYPE ); 
  ----------------------------------------  
  PROCEDURE delete_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ); 
  ----------------------------------------  
  FUNCTION create_or_update_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  ----------------------------------------  
  PROCEDURE create_or_update_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ); 
  ----------------------------------------  
  FUNCTION create_or_update_row( p_row IN OCTB_TASK_BOARD%ROWTYPE ) 
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  ----------------------------------------  
  PROCEDURE create_or_update_row( p_row IN OCTB_TASK_BOARD%ROWTYPE ); 
  ----------------------------------------  
  FUNCTION get_LABEL( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD."LABEL"%TYPE; 
  ----------------------------------------  
  FUNCTION get_DESCR( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD."DESCR"%TYPE; 
  ----------------------------------------  
  FUNCTION get_AUTHOR_ID( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE; 
  ----------------------------------------  
  PROCEDURE set_LABEL( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE ); 
  ----------------------------------------  
  PROCEDURE set_DESCR( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE ); 
  ----------------------------------------  
  PROCEDURE set_AUTHOR_ID( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ); 
  ----------------------------------------  
END OCTB_TASK_BOARD_api;
/

create or replace PACKAGE BODY OCTB_TASK_BOARD_api IS 
  ----------------------------------------  
  FUNCTION row_exists( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN BOOLEAN  
  IS 
    v_return BOOLEAN := FALSE; 
  BEGIN 
    FOR i IN ( SELECT 1 FROM OCTB_TASK_BOARD WHERE "TASK_BOARD_ID" = p_TASK_BOARD_ID ) LOOP 
      v_return := TRUE; 
    END LOOP; 
    RETURN v_return; 
  END; 
  ----------------------------------------  
  FUNCTION row_exists_yn( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN VARCHAR2  
  IS 
  BEGIN 
    RETURN case when row_exists( p_TASK_BOARD_ID => p_TASK_BOARD_ID )  
             then 'Y' 
             else 'N' 
           end; 
  END; 
  ----------------------------------------  
  FUNCTION get_pk_by_unique_cols( p_LABEL OCTB_TASK_BOARD."LABEL"%TYPE ) 
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
    CURSOR cur_row IS 
      SELECT "TASK_BOARD_ID" from OCTB_TASK_BOARD 
       WHERE COALESCE( "LABEL", '@@@@@@@@@@@@@@@' ) = COALESCE( p_LABEL, '@@@@@@@@@@@@@@@' ); 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_pk; 
    CLOSE cur_row; 
    RETURN v_pk; 
  END get_pk_by_unique_cols; 
  ----------------------------------------  
  FUNCTION create_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE )  
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  BEGIN 
    v_pk := p_TASK_BOARD_ID; 
    INSERT INTO OCTB_TASK_BOARD ( "TASK_BOARD_ID", "LABEL", "DESCR", "AUTHOR_ID" ) 
      VALUES ( v_pk, p_LABEL, p_DESCR, p_AUTHOR_ID ) 
      RETURN "TASK_BOARD_ID" INTO v_pk;  
    RETURN v_pk; 
  END create_row; 
  ---------------------------------------- 
  PROCEDURE create_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ) 
  IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  BEGIN 
    v_pk := create_row( p_TASK_BOARD_ID => p_TASK_BOARD_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_AUTHOR_ID => p_AUTHOR_ID ); 
  END create_row; 
  ----------------------------------------  
  FUNCTION create_row( p_row IN OCTB_TASK_BOARD%ROWTYPE )  
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  BEGIN 
    v_pk := create_row( p_TASK_BOARD_ID => p_row."TASK_BOARD_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_AUTHOR_ID => p_row."AUTHOR_ID" ); 
    RETURN v_pk; 
  END create_row; 
  ----------------------------------------  
  PROCEDURE create_row( p_row IN OCTB_TASK_BOARD%ROWTYPE ) 
  IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  BEGIN 
    v_pk := create_row( p_TASK_BOARD_ID => p_row."TASK_BOARD_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_AUTHOR_ID => p_row."AUTHOR_ID" ); 
  END create_row; 
  ----------------------------------------  
  FUNCTION read_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD%ROWTYPE IS 
    CURSOR cur_row_by_pk( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) IS 
      SELECT * FROM OCTB_TASK_BOARD WHERE "TASK_BOARD_ID" = p_TASK_BOARD_ID; 
    v_row OCTB_TASK_BOARD%ROWTYPE; 
  BEGIN 
    OPEN cur_row_by_pk( p_TASK_BOARD_ID ); 
    FETCH cur_row_by_pk INTO v_row; 
    CLOSE cur_row_by_pk; 
    RETURN v_row; 
  END read_row; 
  ----------------------------------------  
  PROCEDURE read_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE, p_LABEL OUT NOCOPY OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR OUT NOCOPY OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID OUT NOCOPY OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ) 
  IS 
    v_row OCTB_TASK_BOARD%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_TASK_BOARD_ID => p_TASK_BOARD_ID ); 
    IF v_row."TASK_BOARD_ID" IS NOT NULL THEN  
      p_LABEL := v_row."LABEL"; p_DESCR := v_row."DESCR"; p_AUTHOR_ID := v_row."AUTHOR_ID";  
    END IF; 
  END read_row; 
  ----------------------------------------  
  FUNCTION read_row( p_LABEL OCTB_TASK_BOARD."LABEL"%TYPE ) 
  RETURN OCTB_TASK_BOARD%ROWTYPE IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  BEGIN 
    v_pk := get_pk_by_unique_cols( p_LABEL => p_LABEL ); 
    RETURN read_row ( p_TASK_BOARD_ID => v_pk ); 
  END read_row; 
  ----------------------------------------  
  PROCEDURE update_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ) 
  IS 
    v_row   OCTB_TASK_BOARD%ROWTYPE; 
  BEGIN 
    v_row := read_row( p_TASK_BOARD_ID => p_TASK_BOARD_ID ); 
    IF v_row."TASK_BOARD_ID" IS NOT NULL THEN 
      -- update only, if the column values really differ 
      IF COALESCE( v_row."LABEL", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_LABEL, '@@@@@@@@@@@@@@@' )
      OR COALESCE( v_row."DESCR", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_DESCR, '@@@@@@@@@@@@@@@' )
      OR COALESCE( v_row."AUTHOR_ID", -999999999999999.999999999999999 ) <> COALESCE( p_AUTHOR_ID, -999999999999999.999999999999999 ) 
      THEN 
        UPDATE OCTB_TASK_BOARD 
           SET "LABEL" = p_LABEL, "DESCR" = p_DESCR, "AUTHOR_ID" = p_AUTHOR_ID 
         WHERE "TASK_BOARD_ID" = v_row."TASK_BOARD_ID"; 
      END IF; 
    END IF; 
  END update_row; 
  ----------------------------------------  
  PROCEDURE update_row( p_row IN OCTB_TASK_BOARD%ROWTYPE ) 
  IS 
  BEGIN 
    update_row( p_TASK_BOARD_ID => p_row."TASK_BOARD_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_AUTHOR_ID => p_row."AUTHOR_ID" ); 
  END update_row; 
  ----------------------------------------  
  PROCEDURE delete_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  IS 
  BEGIN 
    DELETE FROM OCTB_TASK_BOARD WHERE "TASK_BOARD_ID" = p_TASK_BOARD_ID; 
  END delete_row; 
  ----------------------------------------  
  FUNCTION create_or_update_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  BEGIN 
    IF p_TASK_BOARD_ID IS NULL THEN 
      v_pk := create_row( p_TASK_BOARD_ID => p_TASK_BOARD_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_AUTHOR_ID => p_AUTHOR_ID ); 
    ELSE 
      IF row_exists( p_TASK_BOARD_ID => p_TASK_BOARD_ID ) THEN 
        v_pk := p_TASK_BOARD_ID; 
        update_row( p_TASK_BOARD_ID => p_TASK_BOARD_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_AUTHOR_ID => p_AUTHOR_ID ); 
      ELSE 
        v_pk := create_row( p_TASK_BOARD_ID => p_TASK_BOARD_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_AUTHOR_ID => p_AUTHOR_ID ); 
      END IF; 
    END IF; 
    RETURN v_pk; 
  END create_or_update_row; 
  ----------------------------------------  
  PROCEDURE create_or_update_row( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE DEFAULT NULL, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ) 
  IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  BEGIN 
    v_pk := create_or_update_row( p_TASK_BOARD_ID => p_TASK_BOARD_ID, p_LABEL => p_LABEL, p_DESCR => p_DESCR, p_AUTHOR_ID => p_AUTHOR_ID ); 
  END create_or_update_row; 
  ----------------------------------------  
  FUNCTION create_or_update_row( p_row IN OCTB_TASK_BOARD%ROWTYPE ) 
  RETURN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  BEGIN 
    v_pk := create_or_update_row( p_TASK_BOARD_ID => p_row."TASK_BOARD_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_AUTHOR_ID => p_row."AUTHOR_ID" ); 
    RETURN v_pk; 
  END create_or_update_row; 
  ----------------------------------------  
  PROCEDURE create_or_update_row( p_row IN OCTB_TASK_BOARD%ROWTYPE ) 
  IS 
    v_pk OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE; 
  BEGIN 
    v_pk := create_or_update_row( p_TASK_BOARD_ID => p_row."TASK_BOARD_ID", p_LABEL => p_row."LABEL", p_DESCR => p_row."DESCR", p_AUTHOR_ID => p_row."AUTHOR_ID" ); 
  END create_or_update_row; 
  ----------------------------------------  
  FUNCTION get_LABEL( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD."LABEL"%TYPE IS 
    v_row    OCTB_TASK_BOARD%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_TASK_BOARD_ID => p_TASK_BOARD_ID ); 
    RETURN v_row."LABEL"; 
  END get_LABEL; 
  ----------------------------------------  
  FUNCTION get_DESCR( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD."DESCR"%TYPE IS 
    v_row    OCTB_TASK_BOARD%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_TASK_BOARD_ID => p_TASK_BOARD_ID ); 
    RETURN v_row."DESCR"; 
  END get_DESCR; 
  ----------------------------------------  
  FUNCTION get_AUTHOR_ID( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE ) 
  RETURN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE IS 
    v_row    OCTB_TASK_BOARD%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_TASK_BOARD_ID => p_TASK_BOARD_ID ); 
    RETURN v_row."AUTHOR_ID"; 
  END get_AUTHOR_ID; 
  ----------------------------------------  
  PROCEDURE set_LABEL( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE, p_LABEL IN OCTB_TASK_BOARD."LABEL"%TYPE ) 
  IS 
    v_row OCTB_TASK_BOARD%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_TASK_BOARD_ID => p_TASK_BOARD_ID ); 
    IF v_row."TASK_BOARD_ID" IS NOT NULL THEN 
      -- update only, if the column value really differs 
      IF COALESCE( v_row."LABEL", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_LABEL, '@@@@@@@@@@@@@@@' ) THEN 
        UPDATE OCTB_TASK_BOARD 
           SET "LABEL" = p_LABEL 
         WHERE "TASK_BOARD_ID" = p_TASK_BOARD_ID; 
      END IF; 
    END IF; 
  END set_LABEL; 
  ----------------------------------------  
  PROCEDURE set_DESCR( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE, p_DESCR IN OCTB_TASK_BOARD."DESCR"%TYPE ) 
  IS 
    v_row OCTB_TASK_BOARD%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_TASK_BOARD_ID => p_TASK_BOARD_ID ); 
    IF v_row."TASK_BOARD_ID" IS NOT NULL THEN 
      -- update only, if the column value really differs 
      IF COALESCE( v_row."DESCR", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_DESCR, '@@@@@@@@@@@@@@@' ) THEN 
        UPDATE OCTB_TASK_BOARD 
           SET "DESCR" = p_DESCR 
         WHERE "TASK_BOARD_ID" = p_TASK_BOARD_ID; 
      END IF; 
    END IF; 
  END set_DESCR; 
  ----------------------------------------  
  PROCEDURE set_AUTHOR_ID( p_TASK_BOARD_ID IN OCTB_TASK_BOARD."TASK_BOARD_ID"%TYPE, p_AUTHOR_ID IN OCTB_TASK_BOARD."AUTHOR_ID"%TYPE ) 
  IS 
    v_row OCTB_TASK_BOARD%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_TASK_BOARD_ID => p_TASK_BOARD_ID ); 
    IF v_row."TASK_BOARD_ID" IS NOT NULL THEN 
      -- update only, if the column value really differs 
      IF COALESCE( v_row."AUTHOR_ID", -999999999999999.999999999999999 ) <> COALESCE( p_AUTHOR_ID, -999999999999999.999999999999999 ) THEN 
        UPDATE OCTB_TASK_BOARD 
           SET "AUTHOR_ID" = p_AUTHOR_ID 
         WHERE "TASK_BOARD_ID" = p_TASK_BOARD_ID; 
      END IF; 
    END IF; 
  END set_AUTHOR_ID; 
  ----------------------------------------  
END OCTB_TASK_BOARD_api;
/