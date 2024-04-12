--
--  Gives access to instantiated packages from Gtk.Handlers
--  and signal handlers (procedure and function)
--

with Glib.Values;           use Glib.Values;

with Gtk.Handlers;

with Gtk.Label;             use Gtk.Label;
with Gtk.Widget;            use Gtk.Widget;

package Callback is

    package Window_CB is new Gtk.Handlers.Return_Callback (Gtk_Widget_Record, Boolean);
    use Window_CB;

    package Button_CB is new Gtk.Handlers.Callback (Gtk_Widget_Record);
    use Button_CB;

    package Logged_CB is new Gtk.Handlers.Return_Callback (Widget_Type => Gtk_Widget_Record, 
                                                            Return_Type => Boolean);
    use Logged_CB;

    package Button_Data_CB is new Gtk.Handlers.User_Callback (Widget_Type => Gtk_Widget_Record, 
                                                                User_Type => Gtk_Label);
    use Button_Data_CB;

    function On_Window_Quit (Widget : access Gtk_Widget_Record'class)
        return Boolean;

    procedure Quit (Widget : access Gtk_Widget_Record'class);

    procedure Say_Hello (Widget : access Gtk_Widget_Record'class;
                         Label   :Gtk_Label);

end Callback;