--------------------------------------------------------------------------------------------------------------
-- Tutoriel-02 
-- En programmation GUI, nous allons écrire beaucoup de code. Faire cela en un seul fichier 
-- n'est pas une bonne pratique. Cela peut rapidement devenir un gros gâchis. 
-- Dans ce deuxième tutoriel nous allons créer une fenêtre simple avec un bouton intégré en 
-- utilisant l'approche POO. 
-- Un paquetage est une fonctionnalité Ada qui permet aux développeurs à gérer leur code de manière efficace.
-- Un package est une unité compilée divisée en deux parties (spécification et corps).
-- La spécification du package (spec) peut être divisée en deux parties (publique et privée). À l'intérieur, 
-- vous pouvez trouver la déclaration de sous-programme de déclaration de type.
---------------------------------------------------------------------------------------------------------------

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