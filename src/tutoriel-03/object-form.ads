with Ada.Finalization;  use Ada.Finalization;

with Gtk.Box;               use Gtk.Box;
with Gtk.Enums;             use Gtk.Enums;
with Gtk.Label;             use Gtk.Label;
with Gtk.Table;             use Gtk.Table;
with Gtk.Window;            use Gtk.Window;

with Glib;                  use Glib;

with Object.TextField;      use Object.TextField;
with Object.PasswordField;  use Object.PasswordField;
with Object.ButtonField;    use Object.ButtonField;


pragma Elaborate_All (Gtk);

package Object.Form is
  
    type Form_T is new Object_T with record
        Container : Gtk_Window;
        Vbox : Gtk_Vbox;
        Form_Tab : Gtk_Table;
    end record;
    -- This object represents minimalist form with main container
    -- @Form of Gtk_Window type.
    -- @Vbox is widget that helps to organizes child in a rectangular
    -- area where they are stack on top of each other.
    overriding
    procedure Initialize (This : in out Form_T);

    not overriding
    procedure Add 
        (This                                : in out Form_T;
        Child                                :        ButtonField_T;
        XLeft, XRight, TopAlign, BottonAlign :        Guint;
        XOptions, YOptions                   :        Gtk_Attach_Options;
        XPadding, YPadding                   :        Guint  := 1);
    --  Helper method to insert a login button inside a login form window 

    not overriding
    procedure Add 
        (This                                : in out Form_T;
        Child                                :        PasswordField_T;
        XLeft, XRight, TopAlign, BottonAlign :        Guint;
        XOptions, YOptions                   :        Gtk_Attach_Options;
        XPadding, YPadding                   :        Guint  := 1);
    -- Helper method to insert a new password input inside a login form window
    
    not overriding
    procedure Add 
        (This                                : in out Form_T; 
        Child                                :        TextField_T;
        XLeft, XRight, TopAlign, BottonAlign :        Guint;
        XOptions, YOptions                   :        Gtk_Attach_Options;
        XPadding, YPadding                   :        Guint  := 1);
    --  Helper method to insert textinput inside a login form window

    not overriding
    procedure Add 
        (This                                : in out Form_T; 
        Child                                :        Gtk_Label;
        XLeft, XRight, TopAlign, BottonAlign :        Guint;
        XOptions, YOptions                   :        Gtk_Attach_Options;
        XPadding, YPadding                   :        Guint  := 1 );
    -- Helper method to insert a label inside a login form window
    
    not overriding
    procedure Show (This : in out Form_T);

    -- List all children of Gtk_Container_Record
    not overriding
    procedure Get_Children (This : in out Form_T);

end Object.Form;