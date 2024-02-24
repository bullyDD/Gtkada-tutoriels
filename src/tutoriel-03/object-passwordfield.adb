package body Object.PasswordField is
    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (This : in out PasswordField_T) is
    begin
        Gtk_New (The_Entry => This.Field);
        This.id := PasswordInput;
        This.Field.Set_Visibility (This.Visible);
        This.Field.Set_Invisible_Char (This.Wild_Char);
    end Initialize;

end Object.PasswordField;