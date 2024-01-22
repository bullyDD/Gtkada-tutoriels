with Ada.Text_IO;            use Ada.Text_IO;

package body T_Button_Pkg_Callback is

    procedure On_Btn_Click (Widget : access Gtk_Widget_Record'Class)  is
    begin
        Put_Line ("Btn Ok clicked");
    end On_Btn_Click;

end T_Button_Pkg_Callback;