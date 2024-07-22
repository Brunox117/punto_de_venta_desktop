import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/components/main_appbar.dart';
import 'package:punto_de_venta_desktop/config/theme/app_theme.dart';
import 'package:punto_de_venta_desktop/utils/routes_tiles.dart';
import 'package:punto_de_venta_desktop/views/views.dart';

class BasicLayout extends StatefulWidget {
  const BasicLayout({super.key});

  @override
  _BasicLayoutState createState() => _BasicLayoutState();
}

class _BasicLayoutState extends State<BasicLayout> {
  String _currentPage = '/home';

  void _updatePage(String newPage) {
    setState(() {
      _currentPage = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List routesTilesBuilder = routesTiles;
    return Scaffold(
      body: Row(
        children: <Widget>[
          SizedBox(
            width: width * 0.15,
            child: Drawer(
              child: Container(
                color: AppColors.defaultBlueColor,
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  children: <Widget>[
                    const Text('Nombre', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    ...routesTilesBuilder.map((route) {
                      return ListTile(
                        title: Text(route['title'], style: const TextStyle(color: Colors.white)),
                        leading: Icon(route['icon']),
                        onTap: () {
                          _updatePage(route['route']);
                        },
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: const MainAppBar(),
              body: _getPage(),
            )
          ),
        ],
      ),
    );
  }

  Widget _getPage() {
    switch (_currentPage) {
      case '/home':
        return const HomeView();
      case '/settings':
        return const SettingsView();
      default:
        return const HomeView();
    }
  }
}
