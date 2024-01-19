-----------------------------------------------------------
--  Method 1 :
--  An object-oriented solution, adapted to pointers 
--  (and in particular to class pointers), which allows us 
--  to automatically initialize our objects…

with Ada.Finalization;     use Ada.Finalization;

with Gtk.Button;           use Gtk.Button;
with Gtk.Window;           use Gtk.Window;

package Windows_Pkg is

    type Window_T is new Controlled with record
        Main_Window : Gtk_Window;
        OkBtn       : Gtk_Button;
    end record;

    procedure Initialize (Widget : in out Window_T);

end Windows_Pkg;