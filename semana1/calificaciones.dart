import "dart:io";
void main(){
print("Ingrese calificacion de la unidad uno valor 20% ");
double unidad1=double.parse(stdin.readLineSync())*.2;
print("ingrese calificacio  de la unidad dos volor 30%");
double unidad2=double.parse(stdin.readLineSync())*.3;
print("ingresa calificacion de la unidad tres valor 50%");
double unidad3=double.parse(stdin.readLineSync())*.5;
double calificacion=unidad1+unidad2+unidad3;
print("La calificacion es $calificacion");

}