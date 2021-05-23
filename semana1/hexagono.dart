import "dart:io";
void main(){
print("Ingresa lado uno del hexagono: ");
double lado1=double.parse(stdin.readLineSync());
print("Ingresa lado dos del hexagono: ");
double lado2=double.parse(stdin.readLineSync());
print("Ingrese lado tres del hexagono: ");
double lado3=double.parse(stdin.readLineSync());
print("ingrese lado cuatro del hexagon: ");
double lado4=double.parse(stdin.readLineSync());
print("ingrese lado cinco del hexagon: ");
double lado5=double.parse(stdin.readLineSync());
print("ingrese lado seis del hexagon: ");
double lado6=double.parse(stdin.readLineSync());
double perimetro=lado1+lado2+lado3+lado4+lado5+lado6;
print("el perimetro es = $perimetro");

}