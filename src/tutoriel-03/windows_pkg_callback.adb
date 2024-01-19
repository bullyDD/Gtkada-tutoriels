with Gtk.Main;

package body Windows_Pkg_Callback is
    -------------
    -- On_Quit --
    -------------
    function On_Quit (Widget : access Gtk_Window_Record'class) return Boolean is
        procedure Quit renames Gtk.Main.Main_Quit;    
    begin
        Quit;
        return false;
    end On_Quit;

end Windows_Pkg_Callback;