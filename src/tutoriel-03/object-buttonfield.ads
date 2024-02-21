with Gtk.Button;                use Gtk.Button;

package Object.ButtonField is

    type ButtonField_T is new Object_T with record
        Field : Gtk_Button;
    end record;

    overriding
    procedure Initialize (This : in out ButtonField_T);

end Object.ButtonField;