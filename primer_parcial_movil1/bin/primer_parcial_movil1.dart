import 'dart:io';
class Producto {
  int codigoP;
  String descripcionP;
  double precio;
  int diasVencimiento;

  Producto(this.codigoP, this.descripcionP, this.precio, this.diasVencimiento);
}


class Venta {
  int codigoV;
  String descripcionV;
  List<Producto> productos = [];

  Venta(this.codigoV, this.descripcionV);

  void agregarProducto(Producto producto) {
    productos.add(producto);
  }

  double calcularTotal() {
    double total = 0;
    for (Producto producto in productos) {
      if (producto.diasVencimiento <= 15) {
        total += (producto.precio * 0.85);
      } else {
        total += producto.precio;
      }
    }
    return total;
  }
}
void main(List<String> arguments) {

}

int DiasVencimiento() {
  stdout.write("Días de vencimiento: ");
  String input = stdin.readLineSync()!;
  return int.parse(input);
}


