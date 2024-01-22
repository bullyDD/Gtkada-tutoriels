with Gtk.Enums;             use Gtk.Enums;
with Glib;                  use Glib;

with T_Window_Pkg_Callback;

package body T_Window_Pkg is

    Width  : Gint := 800;
    Height : Gint := 600;

    LOADING_ERROR : exception;
    
    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (Widget : in out T_Window) is
        W : Gtk_Window renames Widget.Win;
        function Q (Widget : access Gtk_Window_Record'class) return Boolean
                    renames T_Window_Pkg_Callback.On_Quit;
        package Quit_Cb renames T_Window_Pkg_Callback.Window_Cb;

    begin
        Gtk_New (W, Window_Toplevel);
        W.Set_Title ("Gtkada - Tutoriel_04");
        W.Set_Default_Size (Width, Height);
        W.Set_Position (Win_Pos_Center);
        Quit_Cb.Connect (W, "delete_event", Q'Access, False);

        if not W.Set_Icon_From_File ("./Images/bug.png") then
            raise LOADING_ERROR;
        end if;

    Exception
        when LOADING_ERROR =>
            null;
    end Initialize;

    ---------
    -- Add --
    ---------
    procedure Add (Widget : in out T_Window; B : in T_Button) is
        W : Gtk_Window renames Widget.Win;
    begin
        W.Add(B.Btn);
    end Add;

    --------------
    -- Show_All --
    --------------
    procedure Show_All (Widget : T_Window) is
    begin
        Widget.Win.Show_All;
    end Show_All;

end T_Window_Pkg;