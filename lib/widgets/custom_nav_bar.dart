import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.green.shade400,
      unselectedItemColor: Colors.grey.shade500,
      currentIndex: 0,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(icon:
        Image.asset('images/home_nav.png'),
          label: 'Home',),
        BottomNavigationBarItem(icon:
        Image.asset('images/star_nav.png'),
          label: 'Favoritos',),
        BottomNavigationBarItem(icon:
        Image.asset('images/cart_nav.png'),
          label: 'Carinho',),
        BottomNavigationBarItem(icon:
        Image.asset('images/user_nav.png'),
          label: 'Perfil',),
      ],
    );
  }
}