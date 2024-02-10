with Ada.Finalization;  use Ada.Finalization;
with Gtk.Button;        use Gtk.Button;

package Button_Pkg is
    type Button_T is new Controlled with record
        Object : Gtk_Button;
    end record;

    procedure Initialize (This : in out Button_T);
    
end Button_Pkg;