package body Object.ButtonField is
    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (This : in out Button_T) is
    begin
        Gtk_New (This.Field, "Connexion");
    end Initialize;
end Object.ButtonField;