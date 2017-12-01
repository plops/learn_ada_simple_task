with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

procedure Main is
   task My_Task;
   task body My_Task is
      Period : constant Time_Span := Milliseconds(100);
      Next_Release : Time;
   begin
      Next_Release := Clock + Period;
      loop
         delay until Next_Release;
         Next_Release := Next_Release + Period;
         Put_Line("Hello");
      end loop;
   end My_Task;

begin
   --  Insert code here.
   null;
end Main;
