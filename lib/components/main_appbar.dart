import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/components/search_bar.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      height: kToolbarHeight,
      color: Colors.white, // Personaliza el color de fondo
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.person),
              SizedBox(width: 8.0),
              Text(
                'Bienvenido(a) [UserName]',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          CustomSearchBar(),
          Text(
            '4:20 PM',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}