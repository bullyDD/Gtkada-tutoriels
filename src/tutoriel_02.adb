--------------------------------------------------------------
-- In this tutorial-02 we are going to create a Gtk Top-level
-- window which is used at software first startup
--------------------------------------------------------------

with Ada.Text_IO;          use Ada.Text_IO;

with Glib;                 use Glib;

with Gtk.Button;           use Gtk.Button;
with Gtk.Label;            use Gtk.Label;
with Gtk.Main;
with Gtk.Window;           use Gtk.Window;
with Gtk.Enums;            use Gtk.Enums;

with MyWindow_Cb;

procedure Tutoriel_02 is
    
    LOADING_ERROR : exception;
    -- We declare an access on Gtk_Wnidow_Record'class object
    Main_Window : Gtk_Window;
    Label       : Gtk_Label;
    OkBtn       : Gtk_Button;
    Width       : constant Gint := 800;
    Height      : constant Gint := 600;
begin
    -- Initialize Gtk
    Gtk.Main.Init;

    -- Instantiate Gtk_Window_Record object as Popup window
    -- and store its address within Main_Window
    Gtk_New (Main_Window);
    Main_Window.Set_Default_Size (Width, Height);
    Main_Window.Set_Position (Win_Pos_Center_Always);
    Main_Window.Set_Title("Gtkada - Tutoriel-02");
    MyWindow_Cb.Window_Cb.Connect (Widget => Main_Window, 
                                  Name => "delete_event", 
                                  Cb => MyWindow_Cb.On_Destroy_Cb'Access, 
                                  After => False);

    if not Main_Window.Set_Icon_From_File ("./images/bug.png") then
        raise LOADING_ERROR;
    end if;

    -- Create and add a label to Main_Window
    Gtk_New (Label, "This is a label");

    -- Create a button
    Gtk_New (OkBtn, "Ok!");

    Main_Window.Add (Label);
    Main_Window.Add (OkBtn);
    -- ERROR::Gtk-WARNING **: Attempting to build .\gtkada_
    -- add a widget with type GtkButton to a GtkWindow, 
    -- but as a GtkBin subclass a GtkWindow can only contain 
    -- one widget at a time; it already contains a widget of 
    -- type GtkLabel.

    Main_Window.Show_All;

    -- Event loop
    Gtk.Main.Main;
exception
    when LOADING_ERROR => Put_Line ("ERROR::FILE_NOT_READ!");
end Tutoriel_02;