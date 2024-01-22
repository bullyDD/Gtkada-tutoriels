with Ada.Finalization;          use Ada.Finalization;

with Gtk.Alignment;             use Gtk.Alignment;
with Gtk.Box;                   use Gtk.Box;
with Gtk.Window;                use Gtk.Window;

with Button_Pkg_5;              use Button_Pkg_5;

package Window_Pkg_5 is

    type T_Window is new Controlled with record
        Win       : Gtk_Window;
        Container : Gtk_Alignment;
    end record;

    -------------------------
    -- T_Window primitives --

    procedure Initialize (Widget : in out T_Window);
    procedure Add        (Parent : in out T_Window; Child : T_Button);
    procedure Show_All   (Widget : in T_Window);

end Window_Pkg_5;