--
--  Gives access to instantiated packages from Gtk.Handlers
--  and signal handlers (procedure and function)
--

with Gtk.Handlers;
with Gtk.Widget;            use Gtk.Widget;

package Callback is

    package Window_CB is new Gtk.Handlers.Return_Callback (Gtk_Widget_Record, Boolean);
    use Window_CB;

    package Button_CB is new Gtk.Handlers.Callback (Gtk_Widget_Record);
    use Button_CB;
    
end Callback;