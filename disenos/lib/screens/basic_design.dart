import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/landscapes.jpg'),
          ),
          Title(),
          ButtonSection(),
          TextWidget()
        ],
      ),
   );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text('In quis aute cupidatat consequat occaecat minim aute mollit amet. Id aliqua consectetur labore sint dolor exercitation aute aliqua eiusmod. Enim nulla laboris do aliquip nisi irure. Consequat cillum velit duis tempor. Mollit cupidatat labore exercitation enim aliqua adipisicing quis. Aliqua ut qui ea qui exercitation est mollit nisi aute occaecat mollit. Id ut magna mollit sit sunt aliqua. Nulla aliquip magna eu sit Lorem anim irure aute occaecat ex. Magna cillum proident et irure do duis est incididunt incididunt eiusmod ex nostrud. Adipisicing amet aliquip nostrud dolor ullamco.'),
    );
  }
}

class ButtonSection extends StatelessWidget {


  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              IconButton(onPressed: (){
                print("Se presionó call");
              }, 
              icon: Icon(Icons.call, color: Colors.blue,)),
              Text('Call', style: TextStyle(color: Colors.blue),),
            ],
          ),
          Expanded(child:Container()),
          Column(
            children: [
              IconButton(onPressed: (){
                print('Se presionó route');
              }, 
              icon:Icon(Icons.map_sharp,color: Colors.blue)),
              Text('Route',style: TextStyle(color: Colors.blue),)
            ],
          ),
          Expanded(child: Container()),
          Column(
            children: [
             IconButton(onPressed: (){
                print('Se presionó share');
              }, 
              icon:Icon(Icons.share,color: Colors.blue)),
              Text('Route',style: TextStyle(color: Colors.blue),)
            ],
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Envolver en un container para darle estilo
      //para evitar que el contenedor quede muy pegado al borde
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      child: Row(
        children: [
          Column(
            //Para alinear columnas de forma horizontal crossAxis
            //Para alinear vertical un MainAxis varia si estamos en unn row o en una columna
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Titulo',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Subtitulo',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black12),)
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Text('41')
        ],
      ),
    );
  }
}