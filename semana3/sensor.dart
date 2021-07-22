import "dart:io";
void main(){
final obj=new Sensores();
obj.read();
obj.imprimir();
}
class Sensores {
List dts=[];
void read (){
print("ingresar datos");
int anosp=int.parse(stdin.readLineSync());
for (int veces=0; veces<anosp; veces++){
print("_ID Sensor");
int id=int.parse(stdin.readLineSync());
print("Valor");
double valor=double.parse(stdin.readLineSync());
print("fecha_registro");
String fecha=stdin.readLineSync();
Map mapa={
"DTS_ID":id,
"valores":valor,
"fechas":fecha,
};
this.dts.add(mapa);
}
}
void imprimir(){
for (var j in this.dts){
print("id:_${j["DTS_ID"]}");
print("valor:_${j["valores"]}");
print("fecha:_${j["fechas"]}");

}
}
}
