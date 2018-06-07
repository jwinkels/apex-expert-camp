begin
   if not octb_users_api.row_exists(:P910_USER_ID) then
       if :P910_PASSWORD is null then
           return 'Das Passwort darf nicht leer sein!';
       end if;

       if length(:P910_PASSWORD) < 8 then
             return 'Das Passwort muss mind. 8 Zeichen lang sein!';
       end if;

      if :P910_PASSWORD <> :P910_REPEAT then
          return 'Die Passwörter stimmen nicht überein!';
      end if;
   end if;
end;