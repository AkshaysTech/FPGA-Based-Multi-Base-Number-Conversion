module bitconverter(IN,A , B , C , H , h , g , f , G );
input [7:0]IN;
input [2:0]H;
output reg [6:0]A , B , C ;
output reg [3:0] h , g , f ;
output reg [7:0]G;
integer temp0 , temp1 , temp , j , i , x , y , z ;
always@(IN)
begin
//IF H =000 then converts into DECIMAL
if(H==3'b000)
begin
temp = 0;
for (i=0;i<=7;i=i+1)
begin
temp = temp + IN[i]*(2**i);
end
x = temp / 100; //Value at hundred place
y= (temp - 100*x )/10; //value at tenth place
z = temp - 100*x-10*y;//value at unit place
//A, B and C are 7 segment display
begin
if(z==1)
C = 7'b0110000;
else if(z==2)
C=7'b1101101;
else if(z==3)
C= 7'b1111001;
else if(z==4)
C=7'b0110011;
else if(z==5)
C=7'b1011011;
else if(z==6)
C=7'b1011111;
else if(z==7)
C=7'b1110001;
else if(z==8)
C=7'b1111111;
else if(z==9)
C=7'b1111011;
else
C=7'b1111110;
end
begin
if(y==1)
B = 7'b0110000;
else if(y==2)
B=7'b1101101;
else if(y==3)
B= 7'b1111001;
else if(y==4)
B=7'b0110011;
else if(y==5)
B=7'b1011011;
else if(y==6)
B=7'b1011111;
else if(y==7)
B=7'b1110001;
else if(y==8)
B=7'b1111111;
else if(y==9)
B=7'b1111011;
else
B=7'b1111110;
end
begin
if(x==1)
A = 7'b0110000;
else if(x==2)
A=7'b1101101;
else if(x==3)
A= 7'b1111001;
else if(x==4)
A=7'b0110011;
else if(x==5)
A=7'b1011011;
else if(x==6)
A=7'b1011111;
else if(x==7)
A=7'b1110001;
else if(x==8)
A=7'b1111111;
else if(x==9)
A=7'b1111011;
else
A=7'b1111110;
end
end
//IF H=001 then convert into OCTAL
if(H==3'b001)
begin
begin
//initially x=y=z=0
y = 0;
x = 0;
z = 0;
for (i = 0; i <= 7; i = i + 1)
 begin if (i >= 0 && i <= 1)
 begin if (i % 3 == 0)
 x = x + IN[i] * (2);
if (i % 3 == 1)
 x = x + IN[i];
end if (i >= 2 && i <= 4)
 begin if (i % 3 == 0)
 y = y + IN[i] * 2;
if (i % 3 == 1)
 y = y + IN[i];
if (i % 3 == 2)
 y = y + IN[i] * 4;
end if (i >= 5 && i <= 7)
 begin if (i % 3 == 0)
 z = z + IN[i] * 2;
if (i % 3 == 1)
 z = z + IN[i] * 1;
if (i % 3 == 2)
 z = z + IN[i] * 4;
end
end
//A, B and C are 7 segment
begin if (z == 1)
 C = 7'b0110000;
else if (z == 2)
 C = 7'b1101101;
else if (z == 3)
 C = 7'b1111001;
else if (z == 4)
 C = 7'b0110011;
else if (z == 5)
 C = 7'b1011011;
else if (z == 6)
 C = 7'b1011111;
else if (z == 7)
 C = 7'b1110001;
else if (z == 8)
 C = 7'b1111111;
else if (z == 9)
 C = 7'b1111011;
else C = 7'b1111110;
end
//A, B and C are 7 segment
 begin if (y == 1)
 B = 7'b0110000;
else if (y == 2)
 B = 7'b1101101;
else if (y == 3)
 B = 7'b1111001;
else if (y == 4)
 B = 7'b0110011;
else if (y == 5)
 B = 7'b1011011;
else if (y == 6)
 B = 7'b1011111;
else if (y == 7)
 B = 7'b1110001;
else if (y == 8)
 B = 7'b1111111;
else if (y == 9)
 B = 7'b1111011;
else B = 7'b1111110;
end
 begin if (x == 1)
 A = 7'b0110000;
else if (x == 2)
 A = 7'b1101101;
else if (x == 3)
 A = 7'b1111001;
else if (x == 4)
 A = 7'b0110011;
else if (x == 5)
 A = 7'b1011011;
else if (x == 6)
 A = 7'b1011111;
else if (x == 7)
 A = 7'b1110001;
else if (x == 8)
 A = 7'b1111111;
else if (x == 9)
 A = 7'b1111011;
else A = 7'b1111110;
end
 end
end
//IF H=010 converts into Hexa-Decimal
if(H==3'b010)
begin
temp1 =0;
temp0 =0;
for (i=0;i<=7;i=i+1)
begin
if(i>=0&&i<=3)
 begin
 if(i%4==0)
 temp0 = temp0 + IN[i];
 if(i%4==1)
 temp0 = temp0 + IN[i]*2;
 if(i%4==2)
 temp0 = temp0 + IN[i]*4;
 if(i%4==3)
 temp0 = temp0 + IN[i]*8;

 end
if(i>=4&&i<=7)
 begin
 if(i%4==0)
 temp1 = temp1 + IN[i];
 if(i%4==1)
 temp1 = temp1 + IN[i]*2;
 if(i%4==2)
 temp1 = temp1 + IN[i]*4;
 if(i%4==3)
 temp1 = temp1 + IN[i]*8;

 end

end
//Assign x and y as temp 1 and temp0
x = temp1;
y = temp0;
begin
//A, B are 7 segment
if(y==1)
B = 7'b0110000;
else if(y==2)
B=7'b1101101;
else if(y==3)
B= 7'b1111001;
else if(y==4)
B=7'b0110011;
else if(y==5)
B=7'b1011011;
else if(y==6)
B=7'b1011111;
else if(y==7)
B=7'b1110001;
else if(y==8)
B=7'b1111111;
else if(y==9)
B=7'b1111011;
else if(y==0)
B=7'b1111110;
else if(y==10)
B=7'b1110111;
else if(y==11)
B=7'b0011111;
else if(y==12)
B=7'b1001110;
else if(y==13)
B=7'b0111101;
else if(y==14)
B=7'b1001111;
else if(y==15)
B=7'b1000111;
else
B=7'b1111110;
end
begin
if(x==1)
A = 7'b0110000;
else if(x==2)
A=7'b1101101;
else if(x==3)
A= 7'b1111001;
else if(x==4)
A=7'b0110011;
else if(x==5)
A=7'b1011011;
else if(x==6)
A=7'b1011111;
else if(x==7)
A=7'b1110001;
else if(x==8)
A=7'b1111111;
else if(x==9)
A=7'b1111011;
else if(x==0)
A=7'b1111110;
else if(x==10)
A=7'b1110111;
else if(x==11)
A=7'b0011111;
else if(x==12)
A=7'b1001110;
else if(x==13)
A=7'b0111101;
else if(x==14)
A=7'b1001111;
else if(x==15)
A=7'b1000111;
else
A=7'b1111110;
end
end
//IF H=011 converts into BCD
if(H==3'b011)
begin
//h ,g ,f are 4bits output ob BCD code
 h = 4'd0;
g = 4'd0;
f = 4'd0;
for (i = 7; i >= 0; i = i - 1)
 begin if (h >= 5)
 h = h + 3;
if (g >= 5)
 g = g + 3;
if (f >= 5)
 f = f + 3;
h = h << 1;
h[0] = g[3];
g = g << 1;
g[0] = f[3];
f = f << 1;
f[0] = IN[i];
end
 end
//IF H=100 ,converts into Graycode
if(H==3'b100)
begin
G[7] = IN[7];
begin
if (IN[7] == IN[6])
 G[6] = 0;
else
 G[6] = 1;
end
begin
if (IN[6] == IN[5])
 G[5] = 0;
else
 G[5] = 1;
end
begin
 if (IN[5] == IN[4])
 G[4] = 0;
else
 G[4] = 1;
end
begin
if (IN[4] == IN[3])
 G[3] = 0;
else
 G[3] = 1;
end
if (IN[3] == IN[2])
 G[2] = 0;
else
 G[2] = 1;
end
begin
if (IN[2] == IN[1])
 G[1] = 0;
else
 G[1] = 1;
end
begin
if (IN[1] == IN[0])
 G[0] = 0;
else
G[0] = 1;
end
end
endmodule
