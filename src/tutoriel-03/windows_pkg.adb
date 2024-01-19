with Ada.Text_IO;         use Ada.Text_IO;

with Gtk.Main;
with Gtk.Enums;            use Gtk.Enums;
with Glib;                 use Glib;

with Windows_Pkg_Callback; 

package body Windows_Pkg is
    
    Width         : constant Gint := 800;
    Height        : constant Gint := 600;

    LOADING_ERROR : exception;

    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (Widget : in out Window_T) is
        W : Gtk_Window renames Widget.Main_Window;
        B : Gtk_Button renames Widget.OkBtn;
        -- For our convenience, Ada gives us the possibility 
        -- to renames long variables or subprograms names
    begin
        -- Initialize Gtk
        Gtk.Main.Init;

        -- Initialize main window
        Gtk_New (W, Window_Toplevel);
        W.Set_Default_Size (Width, Height);
        W.Set_Title ("Gtkada-Tutoriel-03");
        W.Set_Position (Win_Pos_Center);

        -- Quit and free memory allocated to Gtk_Window_Record object
        Windows_Pkg_Callback.Window_Cb.Connect (W, "delete_event", 
                                                Windows_Pkg_Callback.On_Quit'Access,
                                                False);

        -- Change main_window icon
        if not W.Set_Icon_From_File ("./Images/bug.png") then
            raise LOADING_ERROR;
        end if;

        -- Create Ok button
        Gtk_New (B, "Ok");

        -- Without any others container, Ok btn will occupied
        -- all Main_WIndow width and height

        W.Add (Widget => B);
        W.Show_All;

        -- Event loop
        Gtk.Main.Main;
    exception
        when LOADING_ERROR =>
            Put_Line ("ERROR::FAILED_LOADING_ICON");
    end Initialize;

end Windows_Pkg;