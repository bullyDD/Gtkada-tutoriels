with Gtk.Enums;         use Gtk.Enums;
with Glib;              use Glib;
with Gtk.Widget;        use Gtk.Widget;
with Callback;          use Callback;

with Gtk.Handlers;

package body Window_System is

    -- Instantiation du paquetage Gtk.Handlers pour gérer les évenements
    -- quand un bouton est cliqué, modifié le texte du label

    package My_Window_CB is new 
        Gtk.Handlers.User_Callback (Widget_Type => Gtk_Widget_Record, 
                                    User_Type => Window);
    use My_Window_CB;

    --  Say_Hello et Say_Goodbye sont deux simple_handler qui vont permettre
    --  de réaliser les actions d'affichage de deux messages différents.
    
    procedure Say_Hello (Widget : access Gtk_Widget_Record'class;
                         Objet  : Window);

    procedure Say_Goodbye (Widget : access Gtk_Widget_Record'class;
                           Objet  : Window);

    ---------------
    -- Say_Hello --
    ---------------

     procedure Say_Hello (Widget  : access Gtk_Widget_Record'class;
                          Objet   : Window) is
        pragma Unreferenced (Widget);
        Message : String := Objet.Label.Get_Label;
    begin
        if Message'Length = 0 then
            Objet.Label.Set_Label ("Bonjour tout le Monde!");
        elsif Message = "Aurevoir tout le Monde!" then
            Objet.Label.Set_Label ("Bonjour tout le Monde!");
        end if;
    end Say_Hello;

    -----------------
    -- Say_Goodbye --
    -----------------

    procedure Say_Goodbye (Widget : access Gtk_Widget_Record'class;
                           Objet  : Window) 
    is 
        pragma Unreferenced (Widget);
            Message : String := Objet.Label.Get_Label;
    begin
        if Message'Length = 0 then
            Objet.Label.Set_Label ("Aurevoir tout le Monde!");
        elsif Message = "Bonjour tout le Monde!" then
            Objet.Label.Set_Label ("Aurevoir tout le Monde!");
        end if;
    end Say_Goodbye;

    ----------------
    -- Initialize --
    ----------------
    overriding
    procedure Initialize (This : in out Window) is
        -- renomme des unités de bibliothèque pour une utilisation simplifiée
        function Kill (Widget : access Gtk_Widget_Record'class) return Boolean
        renames Callback.On_Window_Quit;

        package CB renames Callback.Window_CB;

    begin
        -- Créer une fenetre principale de dimension 400 x 250 
        -- ensuite connecte le sous programme pour liberer la ressource
        -- une fois la fénètre fermée.

        Gtk_New (This.Win, Window_Toplevel);
        This.Win.Set_Default_Size (400, 250);
        This.Win.Set_Title ("Hello World App");
        CB.Connect (This.Win, "delete_event", Kill'Access, False);

        -- Ajoute une boite verticale
        Gtk_New_Vbox (This.Vbox, Spacing => Gint(5));
        This.Win.Add (This.Vbox);

        -- Créer un label sans texte
        Gtk_New (This.Label, "");
        This.Vbox.Pack_Start (This.Label, 
                            Expand => True, 
                            Fill => False, 
                            Padding => 5);

        -- Créer une boite horizontale dans laquelle seront placés les
        -- boutons

        Gtk_New_Hbox (This.Hbox, Spacing => Gint (1));
        This.Vbox.Pack_Start (This.Hbox);
        
        -- Créer deux boutons alignés horizontallement cote à cote
        Gtk_New (This.Btn1, "Dis bonjour");
        This.Btn1.Set_Relief (Relief => Relief_Normal);
        This.Hbox.Pack_Start (This.Btn1,
                            Expand => True, 
                            Fill => True, 
                            Padding => 3);

        Gtk_New (This.Btn2, "Dis aurevoir");
        This.Btn1.Set_Relief (Relief => Relief_Normal);
        This.Hbox.Pack_Start (This.Btn2,
                            Expand => True, 
                            Fill => True, 
                            Padding => 3);

        My_Window_CB.Connect (This.Btn1, "clicked", Say_Hello'Access, This);
        My_Window_CB.Connect (This.Btn2, "clicked", Say_Goodbye'Access, This);
        -- Ordonne au widget d'afficher tous ses enfants.
        This.Win.Show_All;

    end Initialize;
end Window_System;