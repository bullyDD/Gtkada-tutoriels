with Gtk.Handlers;
with Gtk.Window;      use Gtk.Window;

package MyWindow_Cb is
    package Window_Cb is 
        new Gtk.Handlers.Return_Callback (Gtk_Window_Record, Boolean);    

    use Window_Cb;

    function On_Destroy_Cb (Widget : access Gtk_Window_Record'class) 
        return Boolean;
end MyWindow_Cb;