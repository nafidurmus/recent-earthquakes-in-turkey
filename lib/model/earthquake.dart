import 'dart:convert';

EarthQuakeResponse earthQuakeResponseFromJson(String str) =>
    EarthQuakeResponse.fromJson(json.decode(str));

class EarthQuakeResponse {
  EarthQuakeResponse({
    this.status,
    this.result,
  });

  bool status;
  List<EarthQuake> result;

  factory EarthQuakeResponse.fromJson(Map<String, dynamic> json) =>
      EarthQuakeResponse(
        status: json["status"],
        result: List<EarthQuake>.from(
            json["result"].map((x) => EarthQuake.fromJson(x))),
      );
}

class EarthQuake {
  EarthQuake({
    this.mag,
    this.lng,
    this.lat,
    this.lokasyon,
    this.depth,
    this.coordinates,
    this.title,
    this.rev,
    this.timestamp,
    this.dateStamp,
    this.date,
    this.hash,
    this.hash2,
  });

  double mag;
  double lng;
  double lat;
  String lokasyon;
  double depth;
  List<double> coordinates;
  String title;
  dynamic rev;
  int timestamp;
  DateTime dateStamp;
  String date;
  String hash;
  String hash2;

  factory EarthQuake.fromJson(Map<String, dynamic> json) => EarthQuake(
        mag: json["mag"].toDouble(),
        lng: json["lng"].toDouble(),
        lat: json["lat"].toDouble(),
        lokasyon: json["lokasyon"],
        depth: json["depth"].toDouble(),
        coordinates:
            List<double>.from(json["coordinates"].map((x) => x.toDouble())),
        title: json["title"],
        rev: json["rev"],
        timestamp: json["timestamp"],
        dateStamp: DateTime.parse(json["date_stamp"]),
        date: json["date"],
        hash: json["hash"],
        hash2: json["hash2"],
      );
}
