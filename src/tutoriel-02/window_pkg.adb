with Gtk.Enums;             use Gtk.Enums;
with Glib;                  use Glib;

package body Window_Pkg is
    
    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (This : in out Window_T) is
        Width  : constant Gint := 400;
        Height : constant Gint := 250;

    begin
        Gtk_New (This.Object, Window_Toplevel);
        This.Object.Set_Default_Size (Width, Height);
        This.Object.Set_Position (Win_Pos_Center);
        This.Object.Set_Title ("Gtkada-tutoriel 02");
    end Initialize;

    ---------
    -- Add --
    ---------
    procedure Add (This : in out Window_T; Child : Button_T) is
    begin
        This.Object.Add(Child.Object);
    end Add;

    ----------
    -- Show --
    ----------
    procedure Show (This : in out Window_T) is
    begin
        This.Object.Show_All;
    end Show;

end Window_Pkg;