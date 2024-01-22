with Gtk.Widget;                 use Gtk.Widget;
with Gtk.Handlers;

package T_Button_Pkg_Callback is
    package Button_Cb is new
        Gtk.Handlers.Callback (Widget_Type => Gtk_Widget_Record);

    use Button_Cb;

    procedure On_Btn_Click (Widget : access Gtk_Widget_Record'Class);

end T_Button_Pkg_Callback;