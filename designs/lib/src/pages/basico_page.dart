import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle (fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ]
        ),
      )
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.pexels.com/photos/4108004/pexels-photo-4108004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
        height: 400.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:30.0, vertical:20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Basquet COVID', style: estiloTitulo,),
                  SizedBox( height: 7.0),
                  Text('Deporte amoldado', style: estiloSubtitulo),
                ],
              ),
            ),

            Icon(
              Icons.star, color: Colors.red, size: 30.0
            ),
            Text(
              '41', style: TextStyle(fontSize: 20.0)
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(
          icon, color: Colors.blue, size:40.0,
        ),
        Text(
          texto, style: TextStyle(fontSize: 15.0, color:Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto(){

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal:40.0,vertical:20.0
      ),
      child: Text(
        'Do exercitation esse ut ipsum dolor elit magna mollit magna nostrud amet. Laboris elit ut do pariatur sint ad pariatur culpa. Consectetur officia officia labore sint velit laboris. Proident reprehenderit nisi sit anim velit deserunt deserunt aliqua qui nisi do fugiat. Laboris est minim sint aute labore fugiat nulla eu consectetur dolor nulla esse ut cupidatat.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}