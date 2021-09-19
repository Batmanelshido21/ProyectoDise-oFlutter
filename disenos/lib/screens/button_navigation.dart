import 'package:flutter/material.dart';

class ButtonNavigator extends StatelessWidget {
  const ButtonNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.grey,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Calendario"),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline), label: "Gráfica"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: "Usuarios"),
        ]);
  }
}
