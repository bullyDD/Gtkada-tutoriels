------------------------------------------------------------------------
-- Dans le tutoriel-03, nous avons réalisé un exercice qui consistait
-- à créer un formulaire de connexion avec Gtkada. Malheureusement 
-- nous n'avons pas pu implémenter un mécanisme de connexion qui permet
-- de lire l'identifiant de l'utilisateur et son mot de passe.
--
-- Ce tutoriel va permettre de comprendre comment nous servir d'un sous 
-- programme callback avec deux parametres pour afficher un message lors
-- qu'un bouton est cliqué.
-----------------------------------------------------------------------
with Ada.Text_IO;           use Ada.Text_IO;

with Glib;                  use Glib;

with Gtk.Main;
with Gtk.Handlers;

with Gtk.Box;               use Gtk.Box;
with Gtk.Button;            use Gtk.Button;
with Gtk.Enums;             use Gtk.Enums;
with Gtk.Label;             use Gtk.Label;
with Gtk.Window;            use Gtk.Window;
with Gtk.Widget;            use Gtk.Widget;

with Callback;              use Callback;

procedure tutoriel_04 is
    -- Region déclarative
    
    -- Instantiation d'un paquetage pour gérer les callback

    procedure Quit (Widget : not null access Gtk_Widget_Record'Class);
    
    procedure Quit (Widget : not null access Gtk_Widget_Record'Class) is
        pragma Unreferenced (Widget);
    begin
        Gtk.Main.Main_Quit;
    end Quit;
    
    -- Declaration d'objets (composant d'une GUI)
    Win     : Gtk_Window;
    Btn     : Gtk_Button;
    VBox    : Gtk_Vbox;
    Label   : Gtk_Label;

begin
    Gtk.Main.Init;

    -- Créer une nouvelle fénètre, définie un titre pour la fénetre ainsi les dimensions
    Gtk_New (Win);
    Win.Set_Title ("Hello World App");
    Win.Set_Default_Size (300, 250);
    Win.Set_Resize_Mode (Resize_Mode => Resize_Parent);
    Callback.Window_CB.Connect (Win, "delete_event", Callback.On_Window_Quit'access, False);

    -- Créer une boite verticale qui est ajouté dans la fénètre principale
    Gtk_New_Vbox (VBox, False, Gint (3));
    Win.add(VBox);

    -- Créer et ajoute le titre dans la boite verticale
    Gtk_New (Label, "");
    Vbox.Pack_Start (Label, Expand => True, Fill => True, Padding => Guint (10));

    -- Créer le bouton 
    Gtk_New (Btn, "Dites bonjour");
    Btn.Set_Size_Request (Width => Gint (100), Height => Gint (40));
    Btn.Set_Relief (Relief_Normal);
    Button_Data_CB.Connect (Btn, "clicked", Say_Hello'Access, Label);

    VBox.Pack_Start (Btn, Expand => False, Fill => False, Padding => Guint (10));
    Win.Show_All;

    Gtk.Main.Main;
end tutoriel_04;