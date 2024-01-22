with Gtk.Main;

package body Window_Pkg_5_Callback is
    -------------
    -- On_Quit --
    -------------
    function On_Quit (Widget : access Gtk_Window_Record'class) return Boolean is
        pragma Unreferenced (Widget);
        procedure Quit renames Gtk.Main.Main_Quit;
    begin
        Quit;
        return False;
    end On_Quit;
    
end Window_Pkg_5_Callback;