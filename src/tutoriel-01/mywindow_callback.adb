with Gtk.Main;

package body MyWindow_Callback is

    procedure Main_Quit renames Gtk.Main.Main_Quit;

    ----------
    -- Quit --
    ----------
    function Quit (Widget : access Gtk_Window_Record'Class) return Boolean is
        pragma Unreferenced (Widget);
    begin
        Main_Quit;
        return false;
    end Quit;

end MyWindow_Callback;