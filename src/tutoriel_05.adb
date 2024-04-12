-----------------------------------------------------------------------
-- Comme nous l'avons vu le tutoriel-04, il est possible 
-- de créer un sous-programme qui sera appelé lorsqu'une 
-- action est effectuée sur le widget (bouton) contenu dans notre fénetre
-- Si nous devons un second bouton pour réaliser la meme
-- action mais sur un autre widget (par exemple label2) cela reviendrait
-- à créer une nouvelle instance du paquetage Gtk.Handlers. 
-- Solution pas optimale. 
-- Nous allons mettre en place dans cette partie un type dérivé du type 
-- étiqueté Controlled déclaré dans le paquetage Ada.Finalization
-------------------------------------------------------------------------
with Gtk.Main;
with Window_System;             use Window_System;

procedure Tutoriel_05 is
begin
    Gtk.Main.Init;
    declare
        My_Window : Window;
    begin
        null;
    end;
    Gtk.Main.Main;
end Tutoriel_05;