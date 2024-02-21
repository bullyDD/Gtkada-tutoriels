
with Glib;                  use Glib;
with Gtk.Enums;             use Gtk.Enums;
with Object.TextField;      use Object.TextField;

package body Object.Form is
    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (This : in out Form_T) is
        Width  : constant Gint := 400;
        Height : constant Gint := 300;
        Rows   : constant Guint := 4;
        Cols   : constant Guint := 2;

    begin
        --  Create a Gtk Window
        Gtk_New (This.Container, Window_Toplevel);
        This.Container.Set_Title ("Login Form with Gtakada");
        This.Container.Set_Default_Size (Width, Height);
        This.Container.Set_Position (Win_Pos_Center);

        -- Create a Vertical box
        Gtk_New_Vbox (This.Vbox);
        This.Container.Add(This.Vbox);

        -- Create table
        Gtk_New (This.Form_Tab, Rows, Cols, False);
        This.Vbox.Pack_Start (This.Form_Tab);

    end Initialize;

    ---------
    -- Add --
    ---------
    procedure Add 
        (This                                : in out Form_T;
        Child                                :        ButtonField_T;
        XLeft, XRight, TopAlign, BottonAlign :        Guint;
        XOptions, YOptions                   :        Gtk_Attach_Options;
        XPadding, YPadding                   :        Guint  := 1) 
    is
    begin
        This.Form_Tab.Attach (Child.Field, 
                            XLeft, XRight,
                            TopAlign, BottonAlign,
                            XOptions, YOptions,
                            XPadding, YPadding);
    end Add;

    ---------
    -- Add --
    ---------
    procedure Add 
        (This                                : in out Form_T;
        Child                                :        PasswordField_T;
        XLeft, XRight, TopAlign, BottonAlign :        Guint;
        XOptions, YOptions                   :        Gtk_Attach_Options;
        XPadding, YPadding                   :        Guint  := 1) is
    begin
        This.Form_Tab.Attach (Child.Field, 
                            XLeft, XRight,
                            TopAlign, BottonAlign,
                            XOptions, YOptions,
                            XPadding, YPadding);
    end Add;

    ---------
    -- Add --
    ---------
    procedure Add 
        (This                                : in out Form_T; 
        Child                                :        TextField_T;
        XLeft, XRight, TopAlign, BottonAlign :        Guint;
        XOptions, YOptions                   :        Gtk_Attach_Options;
        XPadding, YPadding                   :        Guint := 1) 
    is
    begin
        This.Form_Tab.Attach (Child.Field, XLeft, XRight, 
                            TopAlign, BottonAlign, 
                            XOptions, YOptions, 
                            XPadding, YPadding);
    end Add;

    ----------
    -- Add --
    ---------
    procedure Add 
        (This                                : in out Form_T; 
        Child                                :        Gtk_Label;
        XLeft, XRight, TopAlign, BottonAlign :        Guint;
        XOptions, YOptions                   :        Gtk_Attach_Options;
        XPadding, YPadding                   :        Guint := 1) is
    begin
        This.Form_Tab.Attach (Child, 
                            XLeft, XRight,
                            TopAlign, BottonAlign,
                            XOptions, YOptions,
                            XPadding, YPadding);
    end Add;

    ----------
    -- Show --
    ----------
    procedure show (This : in out Form_T) is
    begin
        This.Container.Show_All;
    end Show;

end Object.Form;