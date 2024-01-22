with Ada.Finalization;      use Ada.Finalization;
with Gtk.Button;            use Gtk.Button;

package Button_Pkg_6 is
  
    type T_Button is new Controlled with record
        Btn : Gtk_Button;
    end record;

    procedure Initialize (widget : in out T_Button);

end Button_Pkg_6;
