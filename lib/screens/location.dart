import 'package:flutter/material.dart';
import '../screens/info_page.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          // ignore: prefer_const_constructors
          title: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(151, 213, 179, 0.192),
                borderRadius: BorderRadius.all(Radius.circular(22.0)),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                          decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "     Search some adress",
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.teal,
                        ),
                      )),
                    )
                  ]))),
      // ignore: prefer_const_constructors
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(41.36655, -8.73872),
          zoom: 14,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
        ],
        /*
        alignment: Alignment.center,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            image: DecorationImage(
          image: const NetworkImage(
              'https://www.mapav.com/images/m/mapa/vila-do-conde.png'),
          fit: BoxFit.cover,
        )),
        */
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InfoPage()));
          },
          backgroundColor: Colors.teal,
          child: //Text('?'),
              const Icon(Icons.question_mark)),
    );
  }
}