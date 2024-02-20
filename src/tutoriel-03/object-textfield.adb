package body Object.TextField is

    procedure Initialize (This : in out TextField_T) is
    begin
        Gtk_New (This.Field);
    end Initialize;

end Object.TextField;