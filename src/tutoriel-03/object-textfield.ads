with Ada.Finalization;              use Ada.Finalization;
with Gtk.GEntry;                    use Gtk.GEntry;


package Object.TextField is

    --pragma Preelaborate;

    type TextField_T is new Object_T with record
        Field : Gtk_Entry;
    end record;

    procedure Initialize (This : in out TextField_T);

end Object.TextField;