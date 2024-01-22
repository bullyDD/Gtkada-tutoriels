with Gtk.Window;                use Gtk.Window;
with Gtk.Handlers;

package Window_Pkg_6_Callback is
    package Window_CB is new    
        Gtk.Handlers.Return_Callback (Gtk_Window_Record, Boolean);
    use Window_CB;


    function On_Quit (Widget : access Gtk_Window_Record'class) return Boolean;
end Window_Pkg_6_Callback;