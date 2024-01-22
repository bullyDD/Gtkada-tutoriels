with Gtk.Main;

with Button_Pkg_6;          use Button_Pkg_6;
with Window_Pkg_6;          use Window_Pkg_6;

procedure Tutoriel_06 is
begin
    Gtk.Main.Init;

    declare
        Main_Window      : T_Window;
        Btn1, Btn2, Btn3 : T_Button;
    begin
        Main_Window.Add (Btn1);
        Main_Window.Add (Btn2);
        Main_Window.Add (Btn3);
        Main_Window.Show_All;
    end;

    Gtk.Main.Main;
    
end Tutoriel_06;