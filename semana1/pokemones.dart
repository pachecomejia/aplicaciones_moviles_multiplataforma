import "dart:io";
void main(){
print("ingresa la base de tu rectangulo: ");
double base=double.parse(stdin.readLineSync());
print("ingrese el area de tu rectangulo: ");
double Area=double.parse(stdin.readLineSync());
print("ingresa la altura de tu rectangulo: ");
double altura=double.parse(stdin.readLineSync());
int area=((base*altura)/30).toInt();
print("le caben = $area");

}