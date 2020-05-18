import 'package:flutter/material.dart';
import 'package:qrreaderapp/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QRReader',
      initialRoute: 'home',
      routes: {
        'home':(BuildContext context)=> HomePage()
      },
    );
  }
}

// Temas puntuales de la sección
// Estos son algunos de los temas principales de la sección:
// Lanzar la cámara y leer un código QR
// Almacenarlo en SQLite
// CRUD hacia SQLite - Almacenamiento interno
// Uso de mapas
// Mapbox
// Marcadores
// Abrir URLs
// Y más
// El objetivo es crear una aplicación real, usando diferentes formas de vistas, tabs y demás, esta aplicación pueden pulirla más y venderla en las AppStores si así lo desean, no tienen que pedirme permiso para usar el código que aquí aprenderán, ya que es suyo.