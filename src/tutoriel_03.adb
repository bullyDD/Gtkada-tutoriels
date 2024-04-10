--------------------------------------------------------------------------------------
--  Tutorial 03
--  Précédemment nous avons utilisé le paquetage Ada.Finalization pour
--  pour etendre le type étiquété Controlled afin de créer une classe d'objets
--  dont l'initialisation était automatique.
--  Nous allons utilisé cette facilité offerte par le type étiquetté Controlled
--  afin de créer une hierachie d'objets réprésentant les composants du formulaire
--  de connexion.
-------------------------------------------------------------------------------------

with Gtk.Main;
with Gtk.Label;                 use Gtk.Label;

with Glib;                      use Glib;
with Glib.Values;               use Glib.Values;
with Gtk.Enums;                 use Gtk.Enums;

with Object.Form;               use Object.Form;
with Object.TextField;          use Object.TextField;
with Object.PasswordField;      use Object.PasswordField;
with Object.ButtonField;        use Object.ButtonField;

with Callback;                  use Callback;

procedure Tutoriel_03 is
    Title          : Gtk_Label;
    Input_Label    : Gtk_Label;
    Password_Label : Gtk_Label;

    Args : GValues := Make_Values (2);
begin
    -- Initialize Gtkada'internal resources
    Gtk.Main.Init;
    Gtk_New (Title,"SEA");
    Title.Set_Width_Chars (20);
    Title.Set_Justify (Jtype => Justify_Center);

    Gtk_New (Input_Label, "Identifiant");
    Gtk_New (Password_Label, "Mot de passe");

    declare
        Main_Window : Form_T;
        IdInput     : TextField_T;
        Password    : PasswordField_T;
        LoginBtn    : ButtonField_T;
    begin

        -- Add Title to main window
        Main_Window.Add (Title, 0, 2, 0, 1, Fill, Fill or Expand);

        -- Text label is placed at X to col 0 to 1 and
        -- expand on Y at Row 1 to 2
        -- Text input is placed at X to col 1 to 2 and
        -- expand on Y at Row 1 to 2
        Main_Window.Add (Input_Label, 0, 1, 1, 2, Expand, Expand);
        Main_Window.Add (IdInput, 1, 2, 1, 2, Fill, Expand, 10, 1);

        -- Text label is placed at X to col 0 to 1 and
        -- expand on Y at Row 2 to 3
        -- Text input is placed at X to col 1 to 2 and
        -- expand on Y at Row 2 to 3
        Main_Window.Add (Password_Label, 0, 1, 2, 3, Expand, Expand);
        Main_Window.Add (Password, 1, 2, 2, 3, Fill, Expand, 10, 1);

        -- Button is placed at X to col 1 to 2 and
        -- expand on Y at Row 3 to 4
        Main_Window.Add (LoginBtn, 1, 2, 3, 4, Fill, Expand, 10, 1);
       
        Main_Window.Show;
    end;

    Gtk.Main.Main;
end Tutoriel_03;