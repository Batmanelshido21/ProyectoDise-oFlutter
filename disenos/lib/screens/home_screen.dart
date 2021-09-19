import 'package:disenos/screens/button_navigation.dart';
import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [BackGround(), _HomeBody()],
      ),
      bottomNavigationBar: ButtonNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //Titulos
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}
