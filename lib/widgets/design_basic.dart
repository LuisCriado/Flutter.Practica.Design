import 'package:flutter/material.dart';

class DesingBasicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(image: AssetImage('assets/landscape.jpg')),

        //titulo
        Title(),

        //seccion de botones
        ButtonSection(),

        //descripcion
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Text(
              'Nulla magna elit nostrud laboris pariatur ea quis tempor irure aliquip irure occaecat in. Fugiat laborum et tempor aute elit pariatur labore laboris tempor cupidatat deserunt ipsum fugiat pariatur. Fugiat adipisicing magna eu ex id proident occaecat adipisicing excepteur aliqua nostrud voluptate nulla irure. Cillum excepteur velit non ipsum amet deserunt aute ut. Proident excepteur sunt proident minim ut ex esse sit aliquip fugiat ad ea eiusmod. Et laboris quis mollit anim id minim aliquip anim reprehenderit excepteur incididunt quis elit nulla. Reprehenderit reprehenderit culpa voluptate nulla.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
      //esto nos permite poner los elementos de lado

      child: Row(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Danos tu opínon',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'hola como estas aca no se q va',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            icon: Icons.call,
            text: 'LLamada',
          ),
          CustomButton(icon: Icons.route, text: 'Rutas'),
          CustomButton(icon: Icons.share, text: 'Compalta'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  // realizo los requerimiento de los datos para el widget creado
  final IconData icon;
  final String text;

//aniadimos los required
  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // pasamos los require con el this y las propiedades q vamos a pedir en el widget
        Icon(
          this.icon,
          color: Colors.blue,
          size: 30,
        ),

        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
