with Ada.Finalization;   use Ada.Finalization;
with Gtk.Button;         use Gtk.Button;

package T_Button_Pkg is

    type T_Button is new Controlled with record
        Btn : Gtk_Button;
    end record;

    procedure Initialize (Widget : in out T_Button);

end T_Button_Pkg;   
