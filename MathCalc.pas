Program MathFormule;       //����������� �������������� ������

label m;
var vibor, bye, hello:integer;
    a, b, c, d, x1, x2, s:real;   //a - ������ ���������
                                  //b - ������ ���������
                                  //c - ������ ���������                               
                                  //d - ������������
                                  //x1 - ������ �����������
                                  //x2 - ������ �����������
                                  //s - �����

begin
  repeat 
   m:
   writeln ('������! � ����������� �������������� ������!');
    writeln ('1. ������!');
    writeln ('2. ����!');
   readln(Hello);
   writeln ('');
    case hello of
     1: begin
         repeat
          writeln ('����� �� ������� ������ ������?');
           writeln ('1. ���������� ���������');
           writeln ('2. ������� �����');
           writeln ('3. ������� ��������');
           writeln ('0. �� �����.');
          readln(vibor);
          writeln ('');
           case vibor of
            1: begin
               writeln ('������. ������.');
               writeln ('������� ������������ a,b,c ����������� ���������');
               readln(a,b,c);
               writeln ('');
               d:= b*b-4*a*c;              
                if D<0 then
                 writeln ('������ ���');
                 writeln ('');
                if D=0 then
                 begin
                 x1 := -b/2/a;
                 writeln ('����� ��������: x1=x2=',x1);
                 writeln ('������������ �����', d);
                 writeln ('');
                 end
                else
                 begin
                  x1 := (-b-sqrt(D))/2/a;
                  x2 := (-b+sqrt(D))/2/a;
                  writeln ('�����: x1=', x1, ' x2=',x2);
                  writeln ('������������ ����� ', d);
                  writeln ('');
                 end;
               end;
            2: begin
               writeln ('������. ������.');
               writeln ('������� ��������� a � b:');               
               readln(a,b);
               s:=a*a+2*a*b+b*b;
               writeln ('');
               writeln ('�����: ', s);
               writeln ('');
               end;
            3: begin
               writeln ('������. ������.');
               writeln ('������� ��������� a � b:');               
               readln(a,b);
               s:=a*a-2*a*b+b*b;
               writeln ('');
               writeln ('�����: ', s);
               writeln ('');
               end;
            0: begin
               writeln ('������');
               writeln ('');
               end;
            else writeln ('� ��� �� ����!');
                 writeln ('');
              end 
         until vibor=0;
        end;
     2: begin
         repeat
         writeln ('�� ������� ��� ������ �����?');
         writeln ('1. ��');
         writeln ('2. ���');
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
                writeln ('� ���� �� �������');
                writeln ('');
                end;
          end
         until bye=1;
         end
     else writeln ('� ���� �� �������!');
          writeln ('');
    end 
  until hello=2; 
end. 