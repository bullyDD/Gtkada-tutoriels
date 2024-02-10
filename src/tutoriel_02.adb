--
--  Tutoriel-02 
--  In GUI programming we are going to write a lot of code.
--  and doing this in a single file is not a good pratice.
--  It can become quickly a big mess. In this second tutorial
--  Ada is a multi-paradigm programming language with a lot of
--  interesting features such strong typing, POO, tasking, memory
--  management...
--  Here I will create a simple window with an embedded button 
--  by using POO approach. Package is an Ada facility that helps
--  developers to manage their code in an efficient way.
--  A package is compiled unit which is divided into two parts 
--  (spec and body).
--  Package specification (spec) can be divide into two parts 
--  (public and private). Within it you can find type declaration
--  sub-program declaration.
-- 

with Gtk.Main;

with Window_Pkg;            use Window_Pkg;
with Button_Pkg;            use Button_Pkg;

with Callback;              use Callback;

procedure Tutoriel_02 is

begin
    --  Initialize Gtkada internal's structure 
    Gtk.Main.Init;

    declare
        Main_Window : Window_T;
        ExitBtn     : Button_T;
    begin

        -- Connect event handler to widget
        Callback.Window_CB.Connect(Main_Window.Object, "delete_event", Callback.On_Window_Quit'Access, False);
        Callback.Button_CB.Connect(ExitBtn.Object, "clicked", Callback.Quit'Access);
        
        Main_Window.Add(ExitBtn);
        Main_Window.Show;
    end;

    --  Run the main loop until Gtk.Main.Main_Quit is call
    Gtk.Main.Main;
end Tutoriel_02;