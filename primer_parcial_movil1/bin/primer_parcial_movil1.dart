import 'package:primer_parcial_movil1/primer_parcial_movil1.dart' as primer_parcial_movil1;


void main(List<String> arguments) {
  print('Hello world: ${primer_parcial_movil1.calculate()}!');
}

class Producto {
  int codigoP;
  String nombre;
  String descripcionP;
  double precio;
  DateTime fechaVencimiento;

  Producto(this.codigoP,this.descripcionP,this.nombre, this.precio, this.fechaVencimiento);
}
class Venta {
  int codigoV;
  String descripcionV;
  List<Producto> productos = [];
Venta(this.codigoV,this.descripcionV);
  void agregarProducto(Producto producto) {
    productos.add(producto);
  }
}


