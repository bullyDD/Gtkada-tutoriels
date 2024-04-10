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

    ------------------
    -- Get_Password --
    ------------------
    function Get_Password (This : in out PasswordField_T) return String is
        (This.Field.Get_Text);

end Object.PasswordField;