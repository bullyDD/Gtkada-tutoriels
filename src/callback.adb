with Ada.Text_IO;

with Gtk.Main;

package body Callback is

    --------------------
    -- On_Window_Quit --
    --------------------
    function On_Window_Quit (Widget : access Gtk_Widget_Record'class)
        return Boolean
    is
        Pragma Unreferenced (Widget);
    begin
        Gtk.Main.Main_Quit;
        return False;
    end On_Window_Quit;

    ----------
    -- Quit --
    ----------
    procedure Quit (Widget : access Gtk_Widget_Record'class) is
        use Ada.Text_IO;
    begin
        Put_Line ("Exit button clicked. " & ASCII.CR & " Window deleted");
        Gtk.Main.Main_Quit;
    end Quit;

end Callback;