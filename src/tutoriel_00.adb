--------------------------------------------------------------------------
-- Date : 14/01/2024
-- Author : Bullydd / J.BINYOUM
-- Description : Voici un programme tres simple qui n'affiche
-- qu'une fenetre avec un texte "Hello Ada World!": 
-- un clic sur le bouton de fermeture de la fenetre termine le programme
-- NB : Dans ce tutoriel, tout le code source est écrit dans la unité de
-- programme, ce qui n'est pas une bonne pratique.
---------------------------------------------------------------------------

with Ada.Text_IO;     use Ada.Text_IO;
with Gtk.Main;
with Gtk.Label;       use Gtk.Label;
with Gtk.Widget;      use Gtk.Widget;
with Gtk.Window;      use Gtk.Window;

procedure Tutoriel_00 is
   
   Main_Window : Gtk_Window;
   Label       : Gtk_Label;

   -----------------------------
   -- Window_Destroy Callback --
   -----------------------------
   procedure Window_Destroy (Window : access Gtk_Widget_Record'class) is
      pragma Unreferenced (Window);
   begin
      Gtk.Main.Main_Quit;
   end Window_Destroy;

begin
   -- Initialize Gtk context
   Gtk.Main.Init;

   -- Create the main window set the title and size
   Gtk_New(Main_Window);
   Main_Window.Set_Title ("Gtkada Tutorials - Tutoriel-00");
   Main_Window.Set_Default_Size(400, 250);

   -- Attach destroy callback to the main window
   on_destroy(Main_Window, Window_Destroy'Unrestricted_access);

   -- Create a new Label and display it in the main window
   Gtk_New (Label, "Hello Ada World!");
   Main_Window.add(Label);

   -- Show the main window
   Main_Window.Show_All;

   -- Render loop
   Gtk.Main.Main;
   
end Tutoriel_00;
