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
  Venta venta1 = Venta(1, "Ventas realizadas por Martin :V");
  print("Ingrese los días de vencimiento para cada producto:");

  Producto portatilLenovo = Producto(1, "Lenovo", 100.0, DiasVencimiento());
  Producto portatilHP = Producto(2, "HP", 90.0, DiasVencimiento());
  Producto raton = Producto(3, "ratón", 20.0, DiasVencimiento());
  Producto pcEscritorio =
      Producto(4, "PC escritorio", 600.0, DiasVencimiento());

  venta1.agregarProducto(portatilLenovo);
  venta1.agregarProducto(portatilHP);
  venta1.agregarProducto(raton);
  venta1.agregarProducto(pcEscritorio);

  double total = venta1.calcularTotal();

  print("Ventas realizadas por Martin:");
  for (var producto in venta1.productos) {
    print("Producto: ${producto.descripcionP}");
    print("Precio: ${producto.precio}");
  }
  print("Total de la venta = $total");
}

int DiasVencimiento() {
  stdout.write("Días de vencimiento: ");
  String input = stdin.readLineSync()!;
  return int.parse(input);
}
