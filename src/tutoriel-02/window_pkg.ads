with Ada.Finalize;          use Ada.Finalize;
with Gtk.Window;            use Gtk.Window;

with Button_Pkg;              use Button_Pkg;

package Window_Pkg is
    --
    --  Controlled ???
    -- 
    type Window_T is new Controlled with record
        Object : Gtk_Window;
    end record;

    procedure Initialize (This : in out Window_T);
    procedure Add (This : in out Window_T; Child : Button_T);
    procedure Show (This : in out Window_T);

end Window_Pkg;