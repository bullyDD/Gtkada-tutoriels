--------------------------------------------------------
-- The alignments
-- This is a container intended for a single sub-widget 
-- (the latter is called a child widget). But it allows, 
-- as its name suggests, to align a button according to 
-- precise criteria
---------------------------------------------------------

with Gtk.Main;
with Window_Pkg_5;               use Window_Pkg_5;
with Button_Pkg_5;               use Button_Pkg_5;

procedure Tutoriel_05 is
begin
    Gtk.Main.Init;
    
    declare
        Main_Window : T_Window;
        OkBtn       : T_Button;
        Ignore_CancelBtn   : T_Button;   -- Ignore before a variable name
                                         -- tells the compiler to ignore
                                         -- the variable at compile time
    begin
        Main_Window.Add (OkBtn);
        -- Main_Window.Add (CancelBtn);
        -- ^^ ERROR: GtkAlignment can only contain only one widget
        -- at time.
        Main_Window.Show_All;
    end;
    
    Gtk.Main.Main;
end Tutoriel_05;