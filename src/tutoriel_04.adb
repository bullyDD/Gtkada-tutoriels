-------------------------------------------------------------
-- Method 2 : OOP Approch
-- In this tutorial we are going to create two differents  --
-- packages : T_Window_Pkg and T_Button_Pkg. Inside thoses --
-- we will be creating two differents controlled types :
-- one for T_Window and another for T_Button.
-- With controlled record type we have more control over our
-- widget in the sense that we can create an object with components
-- such as Gtk_Window, Gtk_Button and so on.
-------------------------------------------------------------
with Gtk.Main;

with T_Window_Pkg;        use T_Window_Pkg;
with T_Button_Pkg;        use T_Button_Pkg;

procedure Tutoriel_04 is
begin
    Gtk.Main.Init;
    declare
        Main_Window : T_Window;
        OkBtn       : T_Button;
    begin
        Main_Window.Add (OkBtn);
        Main_Window.Show_All;
    end;
    Gtk.Main.Main;
end Tutoriel_04;