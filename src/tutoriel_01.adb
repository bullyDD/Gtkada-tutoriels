with Glib;              use Glib;
with Gtk.Label;         use Gtk.Label;
with Gtk.Main;
with Gtk.Window;        use Gtk.Window;

with MyWindow_Callback;

procedure Tutoriel_01 is
    Main_Window : Gtk_Window;
    Label       : Gtk_Label;
    Width       : constant Gint := 400;
    Height      : constant Gint := 250; 

begin
    -- Initialize Gtk
    Gtk.Main.Init;

    -- Instantiate Gtk_Window
    Gtk_New (Main_Window);
    Main_Window.Set_Title ("Gtkada - Tutoriel-01");
    Main_Window.Set_Default_Size (Width , Height);

    MyWindow_Callback.Window_Cb.Connect (Main_Window, "delete_event", 
                                        MyWindow_Callback.Quit'Access, False);

    -- Instantiate a label
    Gtk_New (Label, "Hello Ada World!!");
    Main_Window.Add(Label);

    Main_Window.Show_All;
    Gtk.Main.Main;

end Tutoriel_01;