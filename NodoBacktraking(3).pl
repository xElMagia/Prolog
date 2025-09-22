conexion(vancouver,edmonton,16).
conexion(vancouver,calgary,13).
conexion(calgary,edmonton,4).
conexion(calgary,regina,14).
conexion(edmonton,saskatoon,12).
conexion(saskatoon,calgary,9).
conexion(saskatoon,winnipeg,20).
conexion(regina,saskatoon,7).
conexion(regina,winnipeg,4).

conexionExistente(Nodo1,Nodo2,_):-conexion(Nodo1),conexion(Nodo2).

tieneAristas(Nodo):-conexion(Nodo,_,_).

backtraking(Nodoa,Nodof):-conexion(Nodoa,Nodof,_).
backtraking(Nodoa,Nodof):-conexion(Nodoa,Nodoc,_),backtraking(Nodoc,Nodof).
















