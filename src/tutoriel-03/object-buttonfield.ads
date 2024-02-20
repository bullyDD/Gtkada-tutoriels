with Gtk.Button;                use Gtk.Button;

package Object.ButtonField is

    type Button_T is new Object_T with record
        Field : Gtk_Button;
    end record;

    overriding
    procedure Initialize (This : in out Button_T);
    
end Object.ButtonField;