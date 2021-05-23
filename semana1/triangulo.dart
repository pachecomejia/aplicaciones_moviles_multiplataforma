import "dart:io";
void main(){
print("Ingresa la base del triangulo");
double base=double.parse(stdin.readLineSync());
print("Ingrese la altura del triangulo");
double altura=double.parse(stdin.readLineSync());
double area=(base*altura)/2;
print("El area es =$area");
}