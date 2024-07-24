import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/components/common/delete_button1.dart';
import 'package:punto_de_venta_desktop/components/common/dropdown_button.dart';
import 'package:punto_de_venta_desktop/components/common/grid.dart';
import 'package:punto_de_venta_desktop/components/common/search_button1.dart';
import 'package:punto_de_venta_desktop/components/containers/big_container.dart';
import 'package:punto_de_venta_desktop/components/containers/medium_container.dart';
import 'package:punto_de_venta_desktop/components/containers/sales_container.dart';
import 'package:punto_de_venta_desktop/components/default_button.dart';
import 'package:punto_de_venta_desktop/config/theme/app_theme.dart';
import 'package:punto_de_venta_desktop/models/sales_model.dart';


class ContainerData {
  final String subtitle;
  final String title;
  final Icon icon;
  final String value;
  final String unit;

  ContainerData({
    required this.subtitle,
    required this.title,
    required this.icon,
    required this.value,
    required this.unit,
  });
}

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

final List<ContainerData> containerDataList = [
  ContainerData(
    subtitle: 'Productos Registrados 500',
    title: 'Productos Valorizados',
    icon: const Icon(Icons.shopping_cart),
    value: '\$4,352.00',
    unit: 'MXN',
  ),
  ContainerData(
    subtitle: 'Ventas Realizadas: 214',
    title: 'Ventas valorizadas',
    icon: const Icon(Icons.shopping_cart),
    value: '\$ 10,000',
    unit: 'MXN',
  ),
  ContainerData(
    subtitle: 'Productos en stock: 5,647',
    title: 'Almacén valorzado',
    icon: const Icon(Icons.warehouse),
    value: '\$35,000',
    unit: 'MXN',
  ),
  ContainerData(
    subtitle: '',
    title: 'Clientes',
    icon: const Icon(Icons.person),
    value: '2,000',
    unit: '',
  ),
];

final List<SalesData> salesDataList = [
  SalesData(
      title: "Venta del día",
      value: "\$20,000",
      unit: "MXN",
      date: "12/04/2024"),
  SalesData(
      title: "Venta de la semana",
      value: "\$100,000",
      unit: "MXN",
      date: "12/04/2024 - 18/04/2024"),
  SalesData(
      title: "Venta del mes", value: "\$500,000", unit: "MXN", date: "Abril"),
  SalesData(
      title: "Venta del año", value: "\$1,000,000", unit: "MXN", date: "2024"),
];

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Dashboard',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              DefaultButton(
                  icon: Icons.add_circle,
                  title: 'Nueva venta',
                  onPressed: () {}),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  GridWidget(
                    height: MediaQuery.of(context).size.height * 0.17,
                    widgets: ventas,
                    crossAxisCount: 5,
                    aspectRatio: MediaQuery.of(context).size.height * 0.0025,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SearchButton1(onPressed: () {}),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09),
                        DeleteButton1(onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  GridWidget(
                    height: MediaQuery.of(context).size.height * 0.18,
                    widgets: containerDataList
                        .map((e) => MediumContainer(
                              title: e.title,
                              subtitle: e.subtitle,
                              icon: e.icon,
                              value: e.value,
                              unit: e.unit,
                            ))
                        .toList(),
                    crossAxisCount: 4,
                    aspectRatio: MediaQuery.of(context).size.height * 0.0020,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 0, MediaQuery.of(context).size.width * 0.005, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.37,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        color: AppColors.defaultGreyColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Gráficas',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GridWidget(
                    height: MediaQuery.of(context).size.height * 0.3,
                    widgets: salesDataList
                        .map((e) => SalesContainer(
                            title: e.title,
                            value: e.value,
                            unit: e.unit,
                            date: e.date))
                        .toList(),
                    crossAxisCount: 2,
                    aspectRatio: MediaQuery.of(context).size.height * 0.0026,
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
