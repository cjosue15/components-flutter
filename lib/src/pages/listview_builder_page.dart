import 'package:flutter/material.dart';
import 'dart:async';

class ListBuilderPage extends StatefulWidget {
  @override
  _ListBuilderPageState createState() => _ListBuilderPageState();
}

class _ListBuilderPageState extends State<ListBuilderPage> {
  // List<int> _listaNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
  int _finalNumber = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregarImagenes();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregarImagenes();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
      ),
      body: Stack(children: <Widget>[_crearLista(), _crearLoading()]),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300/?image=${_listaNumeros[index]}'));
          }),
    );
  }

  Future<Null> obtenerPagina() async {
    final duration = new Duration(seconds: 2);

    new Timer(duration, () {
      _listaNumeros.clear();
      _finalNumber++;
      _agregarImagenes();
    });

    return Future.delayed(duration);
  }

  void _agregarImagenes() {
    for (var i = 0; i < 10; i++) {
      setState(() {
        _finalNumber++;
        _listaNumeros.add(_finalNumber);
      });
    }
  }

  Future _fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 3);
    new Timer(duration, respuestaHttp);
  }

  void respuestaHttp() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);

    _agregarImagenes();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(height: 20.0)
        ],
      );
    } else {
      return Container();
    }
  }
}
