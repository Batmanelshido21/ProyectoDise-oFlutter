import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.border_all,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.car_rental,
            color: Colors.pinkAccent,
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shop,
            color: Colors.purple,
            text: 'Shopping',
          ),
          _SingleCard(
            icon: Icons.cloud,
            color: Colors.purpleAccent,
            text: 'Bill',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.movie,
            color: Colors.deepPurple,
            text: 'Entertainment',
          ),
          _SingleCard(
            icon: Icons.food_bank_outlined,
            color: Colors.pinkAccent,
            text: 'Grocery',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.border_all,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.car_rental,
            color: Colors.pinkAccent,
            text: 'Transport',
          )
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(40)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
            ),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(text, style: TextStyle(color: color, fontSize: 18))
        ],
      ),
    );
  }
}
