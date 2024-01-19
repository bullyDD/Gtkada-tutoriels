with Gtk.Main;

package body MyWindow_Cb is

    ----------------
    -- On_Destroy --
    ----------------
    function On_Destroy_Cb (Widget : access Gtk_Window_Record'class) 
        return Boolean is
        pragma Unreferenced (Widget);
        procedure Quit renames Gtk.Main.Main_Quit;
    begin
        Quit;
        return False;
    end On_Destroy_Cb;

end MyWindow_Cb;