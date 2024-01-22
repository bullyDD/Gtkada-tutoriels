with Glib;                      use Glib;
with Gtk.Enums;                 use Gtk.Enums;
with Gtk.Button;                use Gtk.Button;

with Window_Pkg_5_Callback; 

package body Window_Pkg_5 is

    package CB renames Window_Pkg_5_Callback;
    use CB;

    Width         : Gint  := 800;
    Height        : Gint  := 600;
    LOADING_ERROR : exception;

    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (Widget : in out T_Window) is
        W : Gtk_Window renames Widget.Win;
        C : Gtk_Alignment renames Widget.Container;
    begin
        -- Initialize main window
        Gtk_New (W, Window_Toplevel);
        W.Set_Title ("Gtkada : Tutoriel-05");
        W.Set_Default_Size (Width, Height);
        W.Set_Position (Win_Pos_Center);

        CB.Window_CB.Connect (W, "delete_event", CB.On_Quit'Access, False);

        -- Here we change Window icon
        if not W.Set_Icon_From_File ("./Images/bug.png") then
            raise LOADING_ERROR;
        end if;

        -- Create a container
        -- Place it at x=0.5 y=0.5 
        -- Scale it on x = 0.1 
        Gtk_New (C, 0.5, 0.5, 0.1, 0.0);
        W.Add (C);
        
    exception
        when LOADING_ERROR =>
            null;
    end Initialize;

    ---------
    -- Add --
    ---------
    procedure Add (Parent : in out T_Window; Child : T_Button) is
        C : Gtk_Alignment renames Parent.Container;
        B : Gtk_Button renames Child.Btn;
    begin
        C.Add (B);
    end Add;

    ----------
    -- Show --
    ----------
    procedure Show_All (Widget : in T_Window) is
    begin
        Widget.Win.Show_All;
    end Show_All;

end Window_Pkg_5;