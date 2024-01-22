with Gtk.Button;            use Gtk.Button;
with Gtk.Enums;             use Gtk.Enums;
with Glib;                  use Glib;

with Window_Pkg_6_Callback; 

package body Window_Pkg_6 is

    package CB renames Window_Pkg_6_Callback;
    use CB;

    Width         : Gint := 600;
    Height        : Gint := 400;
    LOADING_ERROR : exception;
    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (Widget : in out T_Window) is
        W : Gtk_Window renames Widget.Win;
        HB: Gtk_Vbox renames Widget.HBox;
    begin
        -- Initialize Main window
        Gtk_New (W, Window_Toplevel);
        W.Set_Title("Gtkada : Tutoriel-06");
        W.Set_Position (Win_Pos_Center);
        W.Set_Default_Size (Width, Height);

        CB.Window_CB.Connect (W, "delete_event", CB.On_Quit'Access, False);

        -- Change window icon
        if not W.Set_Icon_From_File ("./Images/bug.png") then
            raise LOADING_ERROR;
        end if;

        -- Create Horizontal box
        -- Gtk_New_Hbow params :
        -- Box => Gtk_Hbox,
        -- Homogenous => True means widgets have the same size
        -- spacing => is the same as Padding 
        Gtk_New_Hbox (HB, False, 10);

        -- Add container to Main window
        W.Add (HB);

    exception
        when LOADING_ERROR =>
            null;
    end Initialize;

    ---------
    -- Add --
    ---------
    procedure Add (Parent : in out T_Window; Child : in T_Button) is
        B         : Gtk_Button renames Child.Btn;
        HB        : Gtk_Vbox renames Parent.HBox;
        container : Gtk_Alignment;
    begin
        -- For each new buton create an alignment
        Gtk_New (container, 0.5, 0.5, 1.0, 0.1);

        -- Add padding inside container alignment
        -- @Padding_Left   : 10px
        -- @Padding_Top    : 10px
        -- @Padding_Right  : 10px
        -- @Padding_Bottom : 10px
        container.Set_Padding (10, 10, 10, 10);

        HB.Pack_Start (container);
        container.Add (B);
    end Add;

    --------------
    -- Show_All --
    --------------
    procedure Show_All (Widget : in out T_Window) is
        W : Gtk_Window renames Widget.Win;
    begin
        W.Show_All;
    end Show_All;

end Window_Pkg_6;