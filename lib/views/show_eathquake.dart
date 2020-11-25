import 'package:earthquakes/contants/text_style.dart';
import 'package:earthquakes/model/earthquake.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class ShowEarthQuake extends StatelessWidget {
  final EarthQuake earthQuake;

  const ShowEarthQuake({
    Key key,
    @required this.earthQuake,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(earthQuake.lokasyon.toString()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: showDetailsRow('Şiddet: ', earthQuake.mag.toString())),
          Expanded(
              child: showDetailsRow('Konum: ', earthQuake.title.toString())),
          Expanded(
              child: showDetailsRow(
                  'Tarih ve Saat: ', earthQuake.date.toString())),
          Expanded(
              child: showDetailsRow('Derinlik: ', earthQuake.depth.toString())),
          Expanded(
              child: showDetailsRow(
                  'Koordinatlar: ', earthQuake.coordinates.toString())),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () => MapsLauncher.launchCoordinates(
                  earthQuake.lat, earthQuake.lng),
              child: Card(
                color: Colors.purple[100],
                child: Text(
                  'Depremin harita konumu için tıklayınız',
                  style: titleStyle.copyWith(fontSize: 20.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }

  Widget showDetailsRow(String description, String quake) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        //height: MediaQuery.of(context).size.height,
        child: Card(
          elevation: 2.0,
          margin: EdgeInsets.all(16.0),
          color: Colors.blue[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                description,
                style: titleStyle,
              ),
              Card(
                color: Colors.red[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    quake,
                    style: titleStyle.copyWith(color: Colors.black87),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
