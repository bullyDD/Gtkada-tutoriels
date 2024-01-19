with Gtk.Window;         use Gtk.Window;
with Gtk.Handlers;

package Windows_Pkg_Callback is

    package Window_Cb is new
        Gtk.Handlers.Return_Callback (Gtk_Window_Record, Boolean);
    
    use Window_Cb;

    function On_Quit (Widget : access Gtk_Window_Record'class) return Boolean;
end Windows_Pkg_Callback;
