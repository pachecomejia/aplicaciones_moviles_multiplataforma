import "dart:io";
  void main()
  {
      List users = [];
    Map user = {"Nombre" : "Jazmin", 
    "Apellido" : "Pacheco",      
    "Telefono" : "246 555 84 52",
    "Email"    : "arellano_jazmin@gmail.com"};

    users.add(user);
  String answer = "y";
    while(answer == "y")
  {

    print("### M E N U ###");
    print("-1- Mostrar   Registros");
    print("-2- Insertar  Nuevo Registro");
    print("-3- Modificar Registro");
    print("-4- Borrar    Registro");


  String respuesta = stdin.readLineSync();
    if(respuesta != null)
    {
    switch(respuesta){
    case "1":

  ver(users);
    print("REPETIR(y/n)?");
    answer = stdin.readLineSync();
    break;
    case "2":

  users = ingresar(users);
    print("REPETIR(y/n)?");
    answer = stdin.readLineSync();
    break;
    case "3":

  users = modificar(users);
    print("RPETIR(y/n)?");
    answer = stdin.readLineSync();
    break;
    case "4":

  users = delete(users);
    print("REPETIR(y/n)?");
    answer = stdin.readLineSync();
    break;
    default:
    

    print("ErrorDeMarcacion");
  }
}
    else{
    print("ErrorAlIngresar");
    }
  }
}
  void ver(users){
    for (var i = 0; i< users.length; i++)
  {
    print("Nombre:   ${users[i] ["Nombre"]}"  );
    print("Apellido: ${users[i] ["Apellido"]}");
    print("Telefono: ${users[i] ["Telefono"]}");
    print("Email:    ${users[i] ["Email"]}"   );
    print(".....................................");
  }
}
  List ingresar(users){
    print("Ingresa Nombre:");
  String name     = stdin.readLineSync();
    print("Ingresa Apellido:");
  String surname  = stdin.readLineSync();
    print("Ingresa Telefono:");
  String phone    = stdin.readLineSync();
    print("ingresa Email:");
  String email    = stdin.readLineSync();
    Map user = {"Nombre" : name,
    "Apellido" : surname,
    "Telefono" : phone,
    "Email" : email};
    users.add(user);
    ver(users);
    return users;
 }
  List delete(users)
{
  String ok;
    print("Ingrese el nombre que sera borrado!: ");
  String name = stdin.readLineSync();
    for(int i = 0; i < users.length; i++)
  {
      if(users[i]["Nombre"] == name)
    {
    users.remove(users[i]);
    ver(users);
    ok = "y";
    }
  }
      if(ok == null){
    print("Imposible encontrar registro:(: ");
}
    return users;
  }
  List modificar(users){
  String ok;
    print("Ingrese el nombre que sera cambiado!:");
  String name = stdin.readLineSync();
    for(int i = 0; i < users.length; i++)
    {
      if(users[i]["Nombre"] == name)
    {

    print("Que dato quiere modificar");
    print("1 Nombre"  );
    print("2 Apellido");
    print("3 Telefon" );
    print("4 Email" );

  String key = stdin.readLineSync();
    print("¿Cual sera el nuevo valor?");
  String update = stdin.readLineSync();
    switch(key)
    {
    case "1":
  key = "Nombre";
    users[i][key] = update ;
    ver(users);
    break;
    case "2":
  key = "Apellido";
    users[i][key] = update ;
    ver(users);
    break;
    case "3":
  key = "Telefono";
    users[i][key] = update ;
    ver(users);
    break;
    case "4":
  key = "Email";
    users[i][key] = update ;
    ver(users);
    break;
    default:
    print("La opcion es no valida para la ejecucion:(: ");
    }
  ok = "y";
  }
}
  if(ok == null)
{
  print("El registro no existe!: ");
}
  return users;
}
