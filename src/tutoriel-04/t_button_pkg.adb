with Gtk.Enums;                 use Gtk.Enums;
with Gtk.Widget;                use Gtk.Widget;
with T_Button_Pkg_Callback;   

package body T_Button_Pkg is
    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (Widget : in out T_Button) is
        B : Gtk_Button renames Widget.Btn;
        package Btn_Cb renames T_Button_Pkg_Callback.Button_Cb;
        procedure Click (Widget : access Gtk_Widget_Record'Class)
            renames T_Button_Pkg_Callback.On_Btn_Click;
    begin   
        Gtk_New (B,"Ok");
        B.Set_Relief (Relief_Half);
        Btn_Cb.Connect (B, "clicked", Click'Access);
    end Initialize;

end T_Button_Pkg;