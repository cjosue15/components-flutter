import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: this._crearItemsCorto(),
      ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (String item in this.opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(item),
  //     );
  //     lista..add(tempWidget);
  //     lista.add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorto() {
    return this
        .opciones
        .map((item) => Column(children: <Widget>[
              (ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text(item),
                subtitle: Text('holis'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () => {},
                onLongPress: () => {print('on long')},
              )),
              Divider(),
            ]))
        .toList();
  }
}
