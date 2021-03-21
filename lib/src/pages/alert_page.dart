import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Alerta', style: TextStyle(fontSize: 20.0)),
            textColor: Colors.white,
            color: Colors.blue,
            shape: StadiumBorder(),
            onPressed: () => _mostrarAlerta(context)),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.logout), onPressed: () => Navigator.pop(context)),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenidoooooo'),
                SizedBox(height: 20.0),
                FlutterLogo(
                  size: 100.0,
                ),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Ok'),
              ),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancelar'),
              )
            ],
          );
        });
  }
}
