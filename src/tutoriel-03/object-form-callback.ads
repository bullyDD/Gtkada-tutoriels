with Gtk.Handlers;
with Gtk.Widget;            use Gtk.Widget;

package Object.Form.Callback is

    package Logged_Btn_CB is new Gtk.Handlers.User_Callback (Widget_Type => Gtk_Widget_Record,
                                                            User_Type    => Form_T);

    procedure On_Logged_In 
        (Widget : access Gtk_Widget_Record'Class;
        Data : in Form_T);

end Object.Form.Callback;