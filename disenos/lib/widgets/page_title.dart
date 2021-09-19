import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white);
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Texto de la columna',
              style: textStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Otra cadena para hacer pruebas',
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
