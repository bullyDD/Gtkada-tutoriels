with Gtk.Window;          use Gtk.Window;
with Gtk.Handlers;

package T_Window_Pkg_Callback is

    -- Instantiate Gtk.Handlers.Return_Callback 
    package Window_Cb is new
        Gtk.Handlers.Return_Callback (Gtk_Window_Record, Boolean);
    use Window_Cb;

    -- Function called when user quit a window
    function On_Quit (Widget : access Gtk_Window_Record'class) return Boolean;
end T_Window_Pkg_Callback;