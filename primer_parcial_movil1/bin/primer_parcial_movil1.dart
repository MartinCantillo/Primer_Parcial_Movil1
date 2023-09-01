
void main(List<String> arguments) {
  //print('Hello world: ${primer_parcial_movil1.calculate()}!');

  Producto portatilLenovo =
      Producto(1, "Lenovo", 100.0, DateTime.now().add(Duration(days: 10)));
  Producto portatilHP =
      Producto(2, "HP", 90.0, DateTime.now().add(Duration(days: 30)));
  Producto Mouse =
      Producto(3, "raton", 20.0, DateTime.now().add(Duration(days: 3)));
  Producto Escritorio = Producto(
      4, "pc escritorio", 600.0, DateTime.now().add(Duration(days: 5)));

  Venta venta1 = Venta(3, "Ventas realizadas por Martin :V");
  venta1.agregarProducto(portatilLenovo);
  venta1.agregarProducto(portatilHP);
  venta1.agregarProducto(Mouse);
  venta1.agregarProducto(Escritorio);
  double total = venta1.Procedimiento();
  print("Ventas realizadas por Martin ")
   for (var producto in venta1.productos) {
    print("producto:")
    print("${producto.descripcionP}");
    print("Precio")
    print("${producto.precio}");
  }
  print("Total de la venta = $total");

}

class Producto {
  int codigoP;
  String descripcionP;
  double precio;
  DateTime fechaVencimiento;

  Producto(this.codigoP, this.descripcionP, this.precio, this.fechaVencimiento);
}

class Venta {
  int codigoV;
  String descripcionV;
  List<Producto> productos = [];
  Venta(this.codigoV, this.descripcionV);
  void agregarProducto(Producto producto) {
    productos.add(producto);
  }
  double Procedimiento() {
  double total = 0;
  for (Producto producto in productos) {
    if (producto.fechaVencimiento == null) {
      total += producto.precio;
    } else {
      DateTime fechaActual = DateTime.now();
      int diasVencimiento =
          producto.fechaVencimiento.difference(fechaActual).inDays;
      if (diasVencimiento <= 15) {
        total += producto.precio * 0.85;
      } else {
        total += producto.precio;
      }
    }
  }

  return total;
}
}

