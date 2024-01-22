with Ada.Finalization;     use Ada.Finalization;
with Gtk.Window;           use Gtk.Window;
with Gtk.Widget;           use Gtk.Widget;

with T_Button_Pkg;         use T_Button_Pkg;

package T_Window_Pkg is

    type T_Window is new controlled with record
        Win : Gtk_Window;
    end record;

    -------------------------
    -- T_Window facilities --
    -------------------------
    
    -- Instantiate an object of type T_Window
    procedure Initialize (Widget : in out T_Window);
    -- Add a button to the component Win of @Widget
    procedure Add (Widget : in out T_Window; B : in T_Button);
    -- Show @Widget and his children
    procedure Show_All (Widget : T_Window);

end T_Window_Pkg;
