import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/components/common/delete_button1.dart';
import 'package:punto_de_venta_desktop/components/common/dropdown_button.dart';
import 'package:punto_de_venta_desktop/components/common/grid.dart';
import 'package:punto_de_venta_desktop/components/common/search_button1.dart';
import 'package:punto_de_venta_desktop/components/containers/big_container.dart';
import 'package:punto_de_venta_desktop/components/containers/medium_container.dart';
import 'package:punto_de_venta_desktop/components/default_button.dart';

void agregarVenta() {}

List<DropdownMenuItem> ventas2 = [
  const DropdownMenuItem(value: 'Venta 1', child: Text('Venta 1')),
  const DropdownMenuItem(value: 'Venta 2', child: Text('Venta 2')),
  const DropdownMenuItem(value: 'Venta 3', child: Text('Venta 3')),
  const DropdownMenuItem(value: 'Venta 4', child: Text('Venta 4')),
];

List<Widget> ventas = [
  DropDownCustomButton(
    options: ventas2,
    onChanged: () {},
    hint: 'Sucursal',
  ),
  DropDownCustomButton(
    options: ventas2,
    onChanged: () {},
    hint: 'Categoría',
  ),
  DropDownCustomButton(
    options: ventas2,
    onChanged: () {},
    hint: 'Productos',
  ),
  DropDownCustomButton(
    options: ventas2,
    onChanged: () {},
    hint: 'Fecha inicio',
  ),
  DropDownCustomButton(
    options: ventas2,
    onChanged: () {},
    hint: 'Fecha final',
  ),
  DropDownCustomButton(
    options: ventas2,
    onChanged: () {},
    hint: 'Proveedor',
  ),
  DropDownCustomButton(
    options: ventas2,
    onChanged: () {},
    hint: 'Clientes',
  ),
  DropDownCustomButton(
    options: ventas2,
    onChanged: () {},
    hint: 'Almacenes',
  ),
];

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dashboard',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              DefaultButton(
                  icon: Icons.add_circle,
                  title: 'Nueva venta',
                  onPressed: agregarVenta),
            ],
          ),
          const SizedBox(height: 20),
          BigContainer(
              child: Column(
            children: [
              const Row(
                children: [
                  Text('Criterios de búsqueda',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 25, 0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.20,
                        child: GridWidget(
                          widgets: ventas,
                          crossAxisCount: 5,
                          aspectRatio: MediaQuery.of(context).size.height * 0.0025,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchButton1(onPressed: () {}),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09),
                      DeleteButton1(onPressed: () {}),
                    ],
                  ),
                ],
              )
            ],
          )),
          const SizedBox(height: 20),
          BigContainer(
              child: Column(
            children: [
              const Row(
                children: [
                  Text('Estadísticas',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: const MediumContainer(
                        value: '\$4,352.00',
                        unit: 'MXN',
                        title: 'Productos Valorizados',
                        icon: Icon(Icons.shopping_cart),
                        subtitle: 'Productos Registrados 500',
                      )),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
