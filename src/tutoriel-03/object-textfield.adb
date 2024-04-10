package body Object.TextField is

    procedure Initialize (This : in out TextField_T) is
    begin
        Gtk_New (This.Field);
        This.id := TextInput;
    end Initialize;

    -------------------
    -- Get_TextValue --
    -------------------
    function Get_TextValue (This : in out TextField_T) return String is
        (This.Field.Get_Text);

end Object.TextField;