Program MathFormule;       //Калькулятор математических формул

label m;
var vibor, bye, hello:integer;
    a, b, c, d, x1, x2, s:real;   //a - Первый множитель
                                  //b - Второй множитель
                                  //c - Третий множитель                               
                                  //d - Дискриминант
                                  //x1 - Первое неизвестное
                                  //x2 - Второе неизвестное
                                  //s - Ответ

begin
  repeat 
   m:
   writeln ('Привет! Я калькулятор математических формул!');
    writeln ('1. Привет!');
    writeln ('2. Пока!');
   readln(Hello);
   writeln ('');
    case hello of
     1: begin
         repeat
          writeln ('Какую ты формулу хочешь решить?');
           writeln ('1. Квадратное уравнение');
           writeln ('2. Квадрат суммы');
           writeln ('3. Квадрат разности');
           writeln ('0. Ни какую.');
          readln(vibor);
          writeln ('');
           case vibor of
            1: begin
               writeln ('Хорошо. Начнем.');
               writeln ('Введите коэффициенты a,b,c квадратного уравнения');
               readln(a,b,c);
               writeln ('');
               d:= b*b-4*a*c;              
                if D<0 then
                 writeln ('Корней нет');
                 writeln ('');
                if D=0 then
                 begin
                 x1 := -b/2/a;
                 writeln ('Корни совпадют: x1=x2=',x1);
                 writeln ('Дискриминант равен', d);
                 writeln ('');
                 end
                else
                 begin
                  x1 := (-b-sqrt(D))/2/a;
                  x2 := (-b+sqrt(D))/2/a;
                  writeln ('Корни: x1=', x1, ' x2=',x2);
                  writeln ('Дискриминант равен ', d);
                  writeln ('');
                 end;
               end;
            2: begin
               writeln ('Хорошо. Начнем.');
               writeln ('Введите множители a и b:');               
               readln(a,b);
               s:=a*a+2*a*b+b*b;
               writeln ('');
               writeln ('Ответ: ', s);
               writeln ('');
               end;
            3: begin
               writeln ('Хорошо. Начнем.');
               writeln ('Введите множители a и b:');               
               readln(a,b);
               s:=a*a-2*a*b+b*b;
               writeln ('');
               writeln ('Ответ: ', s);
               writeln ('');
               end;
            0: begin
               writeln ('Хорошо');
               writeln ('');
               end;
            else writeln ('Я так не умею!');
                 writeln ('');
              end 
         until vibor=0;
        end;
     2: begin
         repeat
         writeln ('Вы уверены что хотите выйти?');
         writeln ('1. Да');
         writeln ('2. Нет');
         readln(bye);
         writeln ('');
          case bye of
           1: begin
              writeln ('');
              end;
           2: begin
              goto m;
              end;
           else begin 
                writeln ('Я тебя не понимаю');
                writeln ('');
                end;
          end
         until bye=1;
         end
     else writeln ('Я тебя не понимаю!');
          writeln ('');
    end 
  until hello=2; 
end. 