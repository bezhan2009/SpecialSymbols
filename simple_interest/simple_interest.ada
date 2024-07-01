with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   type Person is record
      Name : String (1 .. 50);
      Age  : Integer;
   end record;

   type People_Array is array (1 .. 3) of Person;

   procedure Get_People (People : in People_Array) is
   begin
      for P of People loop
         Put_Line ("Name: " & P.Name & ", Age: " & Integer'Image (P.Age));
      end loop;
   end Get_People;

   procedure Get_Person (People : in People_Array; Index : in Integer) is
   begin
      declare
         P : Person := People (Index);
      begin
         Put_Line ("Name: " & P.Name & ", Age: " & Integer'Image (P.Age));
      end;
   end Get_Person;

   People : People_Array := (
      (Name => "Алексей", Age => 30),
      (Name => "Мария", Age => 25),
      (Name => "Иван", Age => 40)
   );

   Cmd   : Integer;
   Index : Integer;

begin
   loop
      Put_Line ("Главное меню");
      Put_Line ("1. Вывести информацию о всех людях");
      Put_Line ("2. Вывести информацию о конкретном человеке");
      Put_Line ("0. Выйти из программы");
      Get (Cmd);
      case Cmd is
         when 1 =>
            Get_People (People);
         when 2 =>
            Put_Line ("Введите индекс человека (1-3):");
            Get (Index);
            if Index >= 1 and Index <= 3 then
               Get_Person (People, Index);
            else
               Put_Line ("Некорректный индекс");
            end if;
         when 0 =>
            exit;
         when others =>
            Put_Line ("Неизвестная команда");
      end case;
   end loop;

end Main;
