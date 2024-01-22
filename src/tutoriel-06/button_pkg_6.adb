with Gtk.Enums;             use Gtk.Enums;

package body Button_Pkg_6 is

    -----------------
    --  Initialize --
    -----------------
    procedure Initialize (Widget : in out T_Button) is
        B : Gtk_Button renames Widget.Btn;
    begin
        Gtk_New (B, "Ok");
        B.Set_Relief(Relief_Normal);
    end Initialize;

end Button_Pkg_6;