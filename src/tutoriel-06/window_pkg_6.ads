with Ada.Finalization;          use Ada.Finalization;

with Gtk.Alignment;             use Gtk.Alignment;
with Gtk.Box;                   use Gtk.Box;
with Gtk.Window;                use Gtk.Window;

with Button_Pkg_6;              use Button_Pkg_6;

package Window_Pkg_6 is

    type T_Window is new Controlled with record
        Win       : Gtk_Window;
        HBox      : Gtk_Hbox;
    end record;

    procedure Initialize (Widget : in out T_Window);
    procedure Add        (Parent : in out T_Window; Child : in T_Button);
    procedure Show_All   (Widget : in out T_Window);
    
end Window_Pkg_6;