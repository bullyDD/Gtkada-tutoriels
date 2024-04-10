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

    not overriding
    function Get_Password (This : in out PasswordField_T) return String;


end Object.PasswordField;