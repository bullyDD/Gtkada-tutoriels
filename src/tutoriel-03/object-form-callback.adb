with Ada.Containers;
package body Object.Form.Callback is

    ------------------
    -- On_Logged_In --
    ------------------
    procedure On_Logged_In 
        (Widget : access Gtk_Widget_Record'Class;
        Data : in Form_T) 
    is
        pragma Unreferenced (Widget);
        --  Instantiate Gtk.Container
    begin
        null;
    end On_Logged_In;

end Object.Form.Callback;