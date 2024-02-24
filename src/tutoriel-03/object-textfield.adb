package body Object.TextField is

    procedure Initialize (This : in out TextField_T) is
    begin
        Gtk_New (This.Field);
        This.id := TextInput;
    end Initialize;

end Object.TextField;