with Ada.Finalization;              use Ada.Finalization;
with Gtk.GEntry;                    use Gtk.GEntry;


package Object.TextField is

    --pragma Preelaborate;

    type TextField_T is new Object_T with record
        Field : Gtk_Entry;
    end record;

    overriding
    procedure Initialize (This : in out TextField_T);

    not overriding
    function  Get_TextValue (This : in out TextField_T) return String;

end Object.TextField;