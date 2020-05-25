
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:qrreaderapp/src/models/scan_model.dart';



class MapaPage extends StatefulWidget {
  
  @override
  _MapaPageState createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  
  final map = new MapController();
  String tipoMapa ;

  @override
  Widget build(BuildContext context) {

    final ScanModel scan = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Coordenadas QR')),
        actions:<Widget>[
          IconButton(
            icon: Icon(Icons.my_location),
            onPressed: (){
              map.move(scan.getLatLng(), 18);
            },
          )
        ],
      ),
      body: _crearFlutterMap(scan),
      floatingActionButton: _crearBotonFlotante(context),
    );
  }

  _crearBotonFlotante(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.repeat),
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: (){

        if (tipoMapa == 'raarvacr/ckahrda0p07v71jqpb1koreaf') {
          tipoMapa = 'raarvacr/ckaht9wfl09kf1ipo89xf01s3';
        } else if (tipoMapa == 'raarvacr/ckaht9wfl09kf1ipo89xf01s3') {
          tipoMapa = 'raarvacr/ckahtcqrk060f1im87xdb3l51';
        } else {
          tipoMapa = 'raarvacr/ckahrda0p07v71jqpb1koreaf';
        }
        setState((){});
      },
    );
  }

  Widget _crearFlutterMap(ScanModel scan) {
    return FlutterMap(
      mapController:map,
      options: MapOptions(
        center: scan.getLatLng(),
        zoom: 18
      ),
      layers:[
        _crearMapa(),
        _crearMarcadores(scan)
      ]
    );
  }

  _crearMapa() {
    return TileLayerOptions(
          urlTemplate: 'https://api.mapbox.com/styles/v1/'
            '{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
          additionalOptions: {
            'accessToken':'pk.eyJ1IjoicmFhcnZhY3IiLCJhIjoiY2thaDhrOHBvMDFybDJ4anlxbHU0YWdvbCJ9.KHRBWnjrbKL-mOTolzapnA',
            'id': '$tipoMapa'
          }
    );
  }

  _crearMarcadores (ScanModel scan){
    return MarkerLayerOptions(
      markers: <Marker>[
        Marker(
          width: 100.0,
          height:100.0,
          point: scan.getLatLng(),
          builder:(context)=>Container(
            child: Icon(Icons.location_on, size: 70.0, color: Theme.of(context).primaryColor,),
          )
        )
      ]
    );
  }
}

