--
--  Tutoriel-01 : First GUI composed of a window
--  with an exit button.
--  Exit button is clicked to destroy the Main window.
--
with Gtk.Main;

with Gtk.Enums;             use Gtk.Enums;
with Gtk.Window;            use Gtk.Window;
with Gtk.Button;            use Gtk.Button;

with Glib;                  use Glib;
with Callback;              use Callback;

procedure Tutoriel_01 is
    Main_Window : Gtk_Window;
    ExitBtn     : Gtk_Button;

    -- Window size
    Width  : constant Gint := 400;
    Height : constant Gint := 250;

begin
    -- Initialize GtkAda's internal structures
    Gtk.Main.Init;

    -- Create Gtk Window
    Gtk_New (Main_Window, Window_Toplevel);
    Main_Window.Set_Default_Size (Width, Height);
    Main_Window.Set_Title ("Gtkada-tutoriel-01");
    Main_Window.Set_Position (Win_Pos_Center);

    --  Create Exit button
    Gtk_New_With_Mnemonic (ExitBtn, "Exit");
    ExitBtn.Set_Relief (Relief_Normal);


    -- Add button to the window
    Main_Window.Add(ExitBtn);


    --  Display window to the screen
    Main_Window.Show_All;


    -- Runs the main loop until Gtk.Main.Main_Quit is called
    Gtk.Main.Main;
    
end Tutoriel_01;