with Ada.Finalization;          use Ada.Finalization;

with Gtk.Box;                   use Gtk.Box;
with Gtk.Button;                use Gtk.Button;
with Gtk.Label;                 use Gtk.Label;
with Gtk.Window;                use Gtk.Window;

package Window_System is

    type Window is new Controlled with private;
    overriding
    procedure Initialize (This : in out Window);
    overriding
    procedure Finalize (This : in out Window) is null;

private

    type Window is new Controlled with record
        Win         : Gtk_Window;
        Vbox        : Gtk_Vbox;
        Hbox        : Gtk_Hbox;
        Label       : Gtk_Label;
        Btn1, Btn2  : Gtk_Button;
    end record;

end Window_System;