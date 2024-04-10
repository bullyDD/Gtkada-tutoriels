with Ada.Text_IO;               use Ada.Text_IO;

with Gtk.Widget;                use Gtk.Widget;

with Gtk.Enums;                 use Gtk.Enums;
with Gtk.Container;             use Gtk.Container;
with Callback;                  use Callback;

with System;                    use System;

package body Object.Form is
    ----------------
    -- Initialize --
    ----------------
    procedure Initialize (This : in out Form_T) is
        Width  : constant Gint  := 400;
        Height : constant Gint  := 300;
        Rows   : constant Guint := 4;
        Cols   : constant Guint := 2;

    begin
        --  Create a Gtk Window
        Gtk_New (This.Container, Window_Toplevel);
        This.Container.Set_Title ("Login Form with Gtakada");
        This.Container.Set_Default_Size (Width, Height);
        This.Container.Set_Position (Win_Pos_Center);
        This.Container.Set_Resizable (False);

        -- Set Component type ID
        This.id := Formular;

        -- Create a Vertical box
        Gtk_New_Vbox (This.Vbox);
        This.Container.Add(This.Vbox);

        -- Create table
        Gtk_New (This.Form_Tab, Rows, Cols, False);
        This.Vbox.Pack_Start (This.Form_Tab);

        --  When user click on close button, Callback.On_Window_Quit is trigger to Quit Gtkada Main loop 
        Callback.Window_CB.Connect (This.Container, "delete_event", Callback.On_Window_Quit'Access, False);

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
    procedure Show (This : in out Form_T) is
    begin
        This.Container.Show_All;
    end Show;

    ---------------
    -- Logged_In --
    ---------------
    --  Log current user. Check user credentials and display Welcome message
    procedure Logged_In (UserId : String; Password : String) is
    begin
        Put_Line ("User ID is " & UserId & " | Password is " & Password);
    end Logged_In;


end Object.Form;