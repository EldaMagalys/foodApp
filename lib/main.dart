import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Receta del día: Pavlova',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35

                    ),
                  ),
                ),
                Text(
                  'Pavlova es un tipo de postre elaborado de merengue, denominado así en honor de Anna Pávlova',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.fastfood,
            color: Colors.green,
          ),
          Text('Suscríbete'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.stars, 'Fácil'),
          _buildButtonColumn(color, Icons.timer, '15 Minutos'),
          _buildButtonColumn(color, Icons.restaurant_menu, 'Postres'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        '6 claras de huevo '
            '1/2 cucharadita de crémor tártaro '
            '3/4 taza de azúcar granulada '
            '1 paquete de queso crema '
            '2 tazas de cobertura COOL WHIP Whipped Topping '
            '2 cucharaditas de cáscara rallada de naranja '
            '5 tazas de bayas frescas  '
            'Preparación:'
            'Calienta el horno a 250ºF.'
            'Bate las claras de huevo y el crémor tártaro en un tazón mediano con una batidora eléctrica a velocidad alta hasta que se formen picos suaves'
            'Hornea el merengue durante 1-1/2 hora. Déjalo enfriar'
            'Úntalo con la mitad de la mezcla de queso crema; ponle encima la mitad de las bayas.'
            'Tiempo de disfrutar',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodApp',
      theme: ThemeData (
        primaryColor: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('FoodApp'),
        ),
        body: ListView(
          children: [
            Image.network(
                'https://assets.kraftfoods.com/recipe_images/opendeploy/162227_MXM_K64194v0_OR1_V_640x428.jpg'
              // width: 600,
              //  height: 240,
              //  fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}