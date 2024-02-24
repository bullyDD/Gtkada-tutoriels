with Ada.Finalization;          use Ada.Finalization;

package Object is

    pragma Pure;

    type Form_Component is (Formular, TextInput, PasswordInput, Button, None);

    type Object_T is abstract new Controlled with record
        id : Form_Component := None;
    end record ; 

    procedure Initialize (O : in out Object_T) is null;
    procedure Adjust     (O : in out Object_T) is null;
    procedure Finalize   (O : in out Object_T) is null;

end Object;