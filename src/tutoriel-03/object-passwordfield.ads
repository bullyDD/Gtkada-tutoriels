with Gtk.GEntry;            use Gtk.GEntry;
with Glib;                  use Glib;

package Object.PasswordField is

    type PasswordField_T is new Object_T with record
        Field     : Gtk_Entry;
        Visible   : Boolean := False;
        Wild_Char : Gunichar := 42;
    end record;

    overriding
    procedure Initialize (This : in out PasswordField_T);


end Object.PasswordField;