import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // loadData();
  }

  Future<List<dynamic>> loadData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = await json.decode(response);
    opciones = await dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
