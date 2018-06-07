create or replace PACKAGE OCTB_USERS_api IS  
  /**  
   * This is the API for the table OCTB_USERS.  
   * 
   * GENERATION OPTIONS  
   * - must be in the lines 5-25 to be reusable by the generator 
   * - DO NOT TOUCH THIS until you know what you do - read the 
   *   docs under github.com/OraMUC/table-api-generator ;-) 
   * <options  
   *   generator="OM_TAPIGEN" 
   *   generator_version="0.4.1" 
   *   generator_action="COMPILE_API" 
   *   generated_at="2018-05-18 12:34:33" 
   *   generated_by="BES" 
   *   p_table_name="OCTB_USERS" 
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
   * read/write right for the OCTB_USERS_dml_v, tables can be hidden in  
   * extra data schema) and easy readability of the business logic (all DML is   
   * then written in the same style). For APEX automatic row processing like  
   * tabular forms you can optionally use the OCTB_USERS_dml_v, which has  
   * an instead of trigger who is also calling the OCTB_USERS_api. 
   */ 
  ----------------------------------------  
  FUNCTION row_exists( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN BOOLEAN; 
  ----------------------------------------  
  FUNCTION row_exists_yn( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN VARCHAR2; 
  ----------------------------------------  
  FUNCTION get_pk_by_unique_cols( p_USER_NAME OCTB_USERS."USER_NAME"%TYPE ) 
  RETURN OCTB_USERS."USER_ID"%TYPE; 
  ----------------------------------------  
  FUNCTION create_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ) 
  RETURN OCTB_USERS."USER_ID"%TYPE; 
  ---------------------------------------- 
  PROCEDURE create_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ); 
  ----------------------------------------  
  FUNCTION create_row( p_row IN OCTB_USERS%ROWTYPE ) 
  RETURN OCTB_USERS."USER_ID"%TYPE; 
  ----------------------------------------  
  PROCEDURE create_row( p_row IN OCTB_USERS%ROWTYPE ); 
  ----------------------------------------  
  FUNCTION read_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS%ROWTYPE; 
  ----------------------------------------  
  PROCEDURE read_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_FIRST_NAME OUT NOCOPY OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME OUT NOCOPY OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD OUT NOCOPY OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID OUT NOCOPY OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE OUT NOCOPY OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME OUT NOCOPY OCTB_USERS."USER_NAME"%TYPE ); 
  ----------------------------------------  
  FUNCTION read_row( p_USER_NAME OCTB_USERS."USER_NAME"%TYPE ) 
  RETURN OCTB_USERS%ROWTYPE; 
  ----------------------------------------  
  PROCEDURE update_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ); 
  ----------------------------------------  
  PROCEDURE update_row( p_row IN OCTB_USERS%ROWTYPE ); 
  ----------------------------------------  
  PROCEDURE delete_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ); 
  ----------------------------------------  
  FUNCTION create_or_update_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ) 
  RETURN OCTB_USERS."USER_ID"%TYPE; 
  ----------------------------------------  
  PROCEDURE create_or_update_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ); 
  ----------------------------------------  
  FUNCTION create_or_update_row( p_row IN OCTB_USERS%ROWTYPE ) 
  RETURN OCTB_USERS."USER_ID"%TYPE; 
  ----------------------------------------  
  PROCEDURE create_or_update_row( p_row IN OCTB_USERS%ROWTYPE ); 
  ----------------------------------------  
  FUNCTION get_FIRST_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."FIRST_NAME"%TYPE; 
  ----------------------------------------  
  FUNCTION get_LAST_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."LAST_NAME"%TYPE; 
  ----------------------------------------  
  FUNCTION get_PASSWORD( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."PASSWORD"%TYPE; 
  ----------------------------------------  
  FUNCTION get_GROUP_ID( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."GROUP_ID"%TYPE; 
  ----------------------------------------  
  FUNCTION get_IS_ACTIVE( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."IS_ACTIVE"%TYPE; 
  ----------------------------------------  
  FUNCTION get_USER_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."USER_NAME"%TYPE; 
  ----------------------------------------  
  PROCEDURE set_FIRST_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE ); 
  ----------------------------------------  
  PROCEDURE set_LAST_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE ); 
  ----------------------------------------  
  PROCEDURE set_PASSWORD( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE ); 
  ----------------------------------------  
  PROCEDURE set_GROUP_ID( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE ); 
  ----------------------------------------  
  PROCEDURE set_IS_ACTIVE( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE ); 
  ----------------------------------------  
  PROCEDURE set_USER_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ); 
  ----------------------------------------  
END OCTB_USERS_api;
/

create or replace PACKAGE BODY OCTB_USERS_api IS 
  ----------------------------------------  
  FUNCTION row_exists( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN BOOLEAN  
  IS 
    v_return BOOLEAN := FALSE; 
  BEGIN 
    FOR i IN ( SELECT 1 FROM OCTB_USERS WHERE "USER_ID" = p_USER_ID ) LOOP 
      v_return := TRUE; 
    END LOOP; 
    RETURN v_return; 
  END; 
  ----------------------------------------  
  FUNCTION row_exists_yn( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN VARCHAR2  
  IS 
  BEGIN 
    RETURN case when row_exists( p_USER_ID => p_USER_ID )  
             then 'Y' 
             else 'N' 
           end; 
  END; 
  ----------------------------------------  
  FUNCTION get_pk_by_unique_cols( p_USER_NAME OCTB_USERS."USER_NAME"%TYPE ) 
  RETURN OCTB_USERS."USER_ID"%TYPE IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
    CURSOR cur_row IS 
      SELECT "USER_ID" from OCTB_USERS 
       WHERE COALESCE( "USER_NAME", '@@@@@@@@@@@@@@@' ) = COALESCE( p_USER_NAME, '@@@@@@@@@@@@@@@' ); 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_pk; 
    CLOSE cur_row; 
    RETURN v_pk; 
  END get_pk_by_unique_cols; 
  ----------------------------------------  
  FUNCTION create_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE )  
  RETURN OCTB_USERS."USER_ID"%TYPE IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
  BEGIN 
    v_pk := p_USER_ID; 
    INSERT INTO OCTB_USERS ( "USER_ID", "FIRST_NAME", "LAST_NAME", "PASSWORD", "GROUP_ID", "IS_ACTIVE", "USER_NAME" ) 
      VALUES ( v_pk, p_FIRST_NAME, p_LAST_NAME, p_PASSWORD, p_GROUP_ID, p_IS_ACTIVE, p_USER_NAME ) 
      RETURN "USER_ID" INTO v_pk;  
    RETURN v_pk; 
  END create_row; 
  ---------------------------------------- 
  PROCEDURE create_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ) 
  IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
  BEGIN 
    v_pk := create_row( p_USER_ID => p_USER_ID, p_FIRST_NAME => p_FIRST_NAME, p_LAST_NAME => p_LAST_NAME, p_PASSWORD => p_PASSWORD, p_GROUP_ID => p_GROUP_ID, p_IS_ACTIVE => p_IS_ACTIVE, p_USER_NAME => p_USER_NAME ); 
  END create_row; 
  ----------------------------------------  
  FUNCTION create_row( p_row IN OCTB_USERS%ROWTYPE )  
  RETURN OCTB_USERS."USER_ID"%TYPE IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
  BEGIN 
    v_pk := create_row( p_USER_ID => p_row."USER_ID", p_FIRST_NAME => p_row."FIRST_NAME", p_LAST_NAME => p_row."LAST_NAME", p_PASSWORD => p_row."PASSWORD", p_GROUP_ID => p_row."GROUP_ID", p_IS_ACTIVE => p_row."IS_ACTIVE", p_USER_NAME => p_row."USER_NAME" ); 
    RETURN v_pk; 
  END create_row; 
  ----------------------------------------  
  PROCEDURE create_row( p_row IN OCTB_USERS%ROWTYPE ) 
  IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
  BEGIN 
    v_pk := create_row( p_USER_ID => p_row."USER_ID", p_FIRST_NAME => p_row."FIRST_NAME", p_LAST_NAME => p_row."LAST_NAME", p_PASSWORD => p_row."PASSWORD", p_GROUP_ID => p_row."GROUP_ID", p_IS_ACTIVE => p_row."IS_ACTIVE", p_USER_NAME => p_row."USER_NAME" ); 
  END create_row; 
  ----------------------------------------  
  FUNCTION read_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS%ROWTYPE IS 
    CURSOR cur_row_by_pk( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) IS 
      SELECT * FROM OCTB_USERS WHERE "USER_ID" = p_USER_ID; 
    v_row OCTB_USERS%ROWTYPE; 
  BEGIN 
    OPEN cur_row_by_pk( p_USER_ID ); 
    FETCH cur_row_by_pk INTO v_row; 
    CLOSE cur_row_by_pk; 
    RETURN v_row; 
  END read_row; 
  ----------------------------------------  
  PROCEDURE read_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_FIRST_NAME OUT NOCOPY OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME OUT NOCOPY OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD OUT NOCOPY OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID OUT NOCOPY OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE OUT NOCOPY OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME OUT NOCOPY OCTB_USERS."USER_NAME"%TYPE ) 
  IS 
    v_row OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    IF v_row."USER_ID" IS NOT NULL THEN  
      p_FIRST_NAME := v_row."FIRST_NAME"; p_LAST_NAME := v_row."LAST_NAME"; p_PASSWORD := v_row."PASSWORD"; p_GROUP_ID := v_row."GROUP_ID"; p_IS_ACTIVE := v_row."IS_ACTIVE"; p_USER_NAME := v_row."USER_NAME";  
    END IF; 
  END read_row; 
  ----------------------------------------  
  FUNCTION read_row( p_USER_NAME OCTB_USERS."USER_NAME"%TYPE ) 
  RETURN OCTB_USERS%ROWTYPE IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
  BEGIN 
    v_pk := get_pk_by_unique_cols( p_USER_NAME => p_USER_NAME ); 
    RETURN read_row ( p_USER_ID => v_pk ); 
  END read_row; 
  ----------------------------------------  
  PROCEDURE update_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ) 
  IS 
    v_row   OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row( p_USER_ID => p_USER_ID ); 
    IF v_row."USER_ID" IS NOT NULL THEN 
      -- update only, if the column values really differ 
      IF COALESCE( v_row."FIRST_NAME", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_FIRST_NAME, '@@@@@@@@@@@@@@@' )
      OR COALESCE( v_row."LAST_NAME", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_LAST_NAME, '@@@@@@@@@@@@@@@' )
      OR COALESCE( v_row."PASSWORD", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_PASSWORD, '@@@@@@@@@@@@@@@' )
      OR COALESCE( v_row."GROUP_ID", -999999999999999.999999999999999 ) <> COALESCE( p_GROUP_ID, -999999999999999.999999999999999 )
      OR COALESCE( v_row."IS_ACTIVE", -999999999999999.999999999999999 ) <> COALESCE( p_IS_ACTIVE, -999999999999999.999999999999999 )
      OR COALESCE( v_row."USER_NAME", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_USER_NAME, '@@@@@@@@@@@@@@@' ) 
      THEN 
        UPDATE OCTB_USERS 
           SET "FIRST_NAME" = p_FIRST_NAME, "LAST_NAME" = p_LAST_NAME, "PASSWORD" = p_PASSWORD, "GROUP_ID" = p_GROUP_ID, "IS_ACTIVE" = p_IS_ACTIVE, "USER_NAME" = p_USER_NAME 
         WHERE "USER_ID" = v_row."USER_ID"; 
      END IF; 
    END IF; 
  END update_row; 
  ----------------------------------------  
  PROCEDURE update_row( p_row IN OCTB_USERS%ROWTYPE ) 
  IS 
  BEGIN 
    update_row( p_USER_ID => p_row."USER_ID", p_FIRST_NAME => p_row."FIRST_NAME", p_LAST_NAME => p_row."LAST_NAME", p_PASSWORD => p_row."PASSWORD", p_GROUP_ID => p_row."GROUP_ID", p_IS_ACTIVE => p_row."IS_ACTIVE", p_USER_NAME => p_row."USER_NAME" ); 
  END update_row; 
  ----------------------------------------  
  PROCEDURE delete_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  IS 
  BEGIN 
    DELETE FROM OCTB_USERS WHERE "USER_ID" = p_USER_ID; 
  END delete_row; 
  ----------------------------------------  
  FUNCTION create_or_update_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ) 
  RETURN OCTB_USERS."USER_ID"%TYPE IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
  BEGIN 
    IF p_USER_ID IS NULL THEN 
      v_pk := create_row( p_USER_ID => p_USER_ID, p_FIRST_NAME => p_FIRST_NAME, p_LAST_NAME => p_LAST_NAME, p_PASSWORD => p_PASSWORD, p_GROUP_ID => p_GROUP_ID, p_IS_ACTIVE => p_IS_ACTIVE, p_USER_NAME => p_USER_NAME ); 
    ELSE 
      IF row_exists( p_USER_ID => p_USER_ID ) THEN 
        v_pk := p_USER_ID; 
        update_row( p_USER_ID => p_USER_ID, p_FIRST_NAME => p_FIRST_NAME, p_LAST_NAME => p_LAST_NAME, p_PASSWORD => p_PASSWORD, p_GROUP_ID => p_GROUP_ID, p_IS_ACTIVE => p_IS_ACTIVE, p_USER_NAME => p_USER_NAME ); 
      ELSE 
        v_pk := create_row( p_USER_ID => p_USER_ID, p_FIRST_NAME => p_FIRST_NAME, p_LAST_NAME => p_LAST_NAME, p_PASSWORD => p_PASSWORD, p_GROUP_ID => p_GROUP_ID, p_IS_ACTIVE => p_IS_ACTIVE, p_USER_NAME => p_USER_NAME ); 
      END IF; 
    END IF; 
    RETURN v_pk; 
  END create_or_update_row; 
  ----------------------------------------  
  PROCEDURE create_or_update_row( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE DEFAULT NULL, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ) 
  IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
  BEGIN 
    v_pk := create_or_update_row( p_USER_ID => p_USER_ID, p_FIRST_NAME => p_FIRST_NAME, p_LAST_NAME => p_LAST_NAME, p_PASSWORD => p_PASSWORD, p_GROUP_ID => p_GROUP_ID, p_IS_ACTIVE => p_IS_ACTIVE, p_USER_NAME => p_USER_NAME ); 
  END create_or_update_row; 
  ----------------------------------------  
  FUNCTION create_or_update_row( p_row IN OCTB_USERS%ROWTYPE ) 
  RETURN OCTB_USERS."USER_ID"%TYPE IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
  BEGIN 
    v_pk := create_or_update_row( p_USER_ID => p_row."USER_ID", p_FIRST_NAME => p_row."FIRST_NAME", p_LAST_NAME => p_row."LAST_NAME", p_PASSWORD => p_row."PASSWORD", p_GROUP_ID => p_row."GROUP_ID", p_IS_ACTIVE => p_row."IS_ACTIVE", p_USER_NAME => p_row."USER_NAME" ); 
    RETURN v_pk; 
  END create_or_update_row; 
  ----------------------------------------  
  PROCEDURE create_or_update_row( p_row IN OCTB_USERS%ROWTYPE ) 
  IS 
    v_pk OCTB_USERS."USER_ID"%TYPE; 
  BEGIN 
    v_pk := create_or_update_row( p_USER_ID => p_row."USER_ID", p_FIRST_NAME => p_row."FIRST_NAME", p_LAST_NAME => p_row."LAST_NAME", p_PASSWORD => p_row."PASSWORD", p_GROUP_ID => p_row."GROUP_ID", p_IS_ACTIVE => p_row."IS_ACTIVE", p_USER_NAME => p_row."USER_NAME" ); 
  END create_or_update_row; 
  ----------------------------------------  
  FUNCTION get_FIRST_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."FIRST_NAME"%TYPE IS 
    v_row    OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    RETURN v_row."FIRST_NAME"; 
  END get_FIRST_NAME; 
  ----------------------------------------  
  FUNCTION get_LAST_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."LAST_NAME"%TYPE IS 
    v_row    OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    RETURN v_row."LAST_NAME"; 
  END get_LAST_NAME; 
  ----------------------------------------  
  FUNCTION get_PASSWORD( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."PASSWORD"%TYPE IS 
    v_row    OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    RETURN v_row."PASSWORD"; 
  END get_PASSWORD; 
  ----------------------------------------  
  FUNCTION get_GROUP_ID( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."GROUP_ID"%TYPE IS 
    v_row    OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    RETURN v_row."GROUP_ID"; 
  END get_GROUP_ID; 
  ----------------------------------------  
  FUNCTION get_IS_ACTIVE( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."IS_ACTIVE"%TYPE IS 
    v_row    OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    RETURN v_row."IS_ACTIVE"; 
  END get_IS_ACTIVE; 
  ----------------------------------------  
  FUNCTION get_USER_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE ) 
  RETURN OCTB_USERS."USER_NAME"%TYPE IS 
    v_row    OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    RETURN v_row."USER_NAME"; 
  END get_USER_NAME; 
  ----------------------------------------  
  PROCEDURE set_FIRST_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_FIRST_NAME IN OCTB_USERS."FIRST_NAME"%TYPE ) 
  IS 
    v_row OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    IF v_row."USER_ID" IS NOT NULL THEN 
      -- update only, if the column value really differs 
      IF COALESCE( v_row."FIRST_NAME", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_FIRST_NAME, '@@@@@@@@@@@@@@@' ) THEN 
        UPDATE OCTB_USERS 
           SET "FIRST_NAME" = p_FIRST_NAME 
         WHERE "USER_ID" = p_USER_ID; 
      END IF; 
    END IF; 
  END set_FIRST_NAME; 
  ----------------------------------------  
  PROCEDURE set_LAST_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_LAST_NAME IN OCTB_USERS."LAST_NAME"%TYPE ) 
  IS 
    v_row OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    IF v_row."USER_ID" IS NOT NULL THEN 
      -- update only, if the column value really differs 
      IF COALESCE( v_row."LAST_NAME", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_LAST_NAME, '@@@@@@@@@@@@@@@' ) THEN 
        UPDATE OCTB_USERS 
           SET "LAST_NAME" = p_LAST_NAME 
         WHERE "USER_ID" = p_USER_ID; 
      END IF; 
    END IF; 
  END set_LAST_NAME; 
  ----------------------------------------  
  PROCEDURE set_PASSWORD( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_PASSWORD IN OCTB_USERS."PASSWORD"%TYPE ) 
  IS 
    v_row OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    IF v_row."USER_ID" IS NOT NULL THEN 
      -- update only, if the column value really differs 
      IF COALESCE( v_row."PASSWORD", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_PASSWORD, '@@@@@@@@@@@@@@@' ) THEN 
        UPDATE OCTB_USERS 
           SET "PASSWORD" = p_PASSWORD 
         WHERE "USER_ID" = p_USER_ID; 
      END IF; 
    END IF; 
  END set_PASSWORD; 
  ----------------------------------------  
  PROCEDURE set_GROUP_ID( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_GROUP_ID IN OCTB_USERS."GROUP_ID"%TYPE ) 
  IS 
    v_row OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    IF v_row."USER_ID" IS NOT NULL THEN 
      -- update only, if the column value really differs 
      IF COALESCE( v_row."GROUP_ID", -999999999999999.999999999999999 ) <> COALESCE( p_GROUP_ID, -999999999999999.999999999999999 ) THEN 
        UPDATE OCTB_USERS 
           SET "GROUP_ID" = p_GROUP_ID 
         WHERE "USER_ID" = p_USER_ID; 
      END IF; 
    END IF; 
  END set_GROUP_ID; 
  ----------------------------------------  
  PROCEDURE set_IS_ACTIVE( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_IS_ACTIVE IN OCTB_USERS."IS_ACTIVE"%TYPE ) 
  IS 
    v_row OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    IF v_row."USER_ID" IS NOT NULL THEN 
      -- update only, if the column value really differs 
      IF COALESCE( v_row."IS_ACTIVE", -999999999999999.999999999999999 ) <> COALESCE( p_IS_ACTIVE, -999999999999999.999999999999999 ) THEN 
        UPDATE OCTB_USERS 
           SET "IS_ACTIVE" = p_IS_ACTIVE 
         WHERE "USER_ID" = p_USER_ID; 
      END IF; 
    END IF; 
  END set_IS_ACTIVE; 
  ----------------------------------------  
  PROCEDURE set_USER_NAME( p_USER_ID IN OCTB_USERS."USER_ID"%TYPE, p_USER_NAME IN OCTB_USERS."USER_NAME"%TYPE ) 
  IS 
    v_row OCTB_USERS%ROWTYPE; 
  BEGIN 
    v_row := read_row ( p_USER_ID => p_USER_ID ); 
    IF v_row."USER_ID" IS NOT NULL THEN 
      -- update only, if the column value really differs 
      IF COALESCE( v_row."USER_NAME", '@@@@@@@@@@@@@@@' ) <> COALESCE( p_USER_NAME, '@@@@@@@@@@@@@@@' ) THEN 
        UPDATE OCTB_USERS 
           SET "USER_NAME" = p_USER_NAME 
         WHERE "USER_ID" = p_USER_ID; 
      END IF; 
    END IF; 
  END set_USER_NAME; 
  ----------------------------------------  
END OCTB_USERS_api;
/