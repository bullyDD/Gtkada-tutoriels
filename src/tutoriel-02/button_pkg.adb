with Gtk.Enums;             use Gtk.Enums;

package body Button_Pkg is
    procedure Initialize (This : in out Button_T) is
    begin
        Gtk_New ( This.Object, "Exit");
        This.Object.Set_Relief (Relief_Normal);
    end Initialize;
end Button_Pkg;