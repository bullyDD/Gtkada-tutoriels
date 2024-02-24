package body Object.ButtonField is
    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (This : in out ButtonField_T) is
    begin
        Gtk_New (This.Field, "Connexion");
        This.id := Button;
    end Initialize;
end Object.ButtonField;