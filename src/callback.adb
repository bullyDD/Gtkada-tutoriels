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

    ---------------
    -- Say_Hello --
    ---------------

     procedure Say_Hello (Widget  : access Gtk_Widget_Record'class;
                            Label : Gtk_Label) is
        pragma Unreferenced (Widget);
        Message : String := Label.Get_Label;
    begin
        if Message'Length = 0 then
            Label.Set_Label ("Bonjour tout le Monde!");
        elsif Message = "Je n'ai rien à dire" then
            Label.Set_Label ("Bonjour tout le Monde!");
        else
            Label.Set_Label ("Je n'ai rien à dire");
        end if;
    end Say_Hello;

end Callback;