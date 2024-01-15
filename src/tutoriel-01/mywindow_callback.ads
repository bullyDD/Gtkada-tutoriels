with Gtk.Window;       use Gtk.Window;
with Gtk.Handlers;

package MyWindow_Callback is

   -- Instantiate Gtk.Handlers.Return_Cb package
   package Window_Cb is new Gtk.Handlers.Return_Callback (Gtk_Window_Record, Boolean);
   use Window_Cb;
    -- Simple handler call when we quit @Widget
   function Quit (Widget : access Gtk_Window_Record'Class) return Boolean;

end MyWindow_Callback;