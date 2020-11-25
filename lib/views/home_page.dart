import 'package:earthquakes/contants/text_style.dart';
import 'package:earthquakes/model/earthquake.dart';
import 'package:earthquakes/views/hooter.dart';
import 'package:earthquakes/views/information.dart';
import 'package:earthquakes/views/show_eathquake.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _url =
      'https://api.orhanaydogdu.com.tr/deprem/live.php'; // son dakika depremler apisi
  int _count = 20;

  Future<EarthQuakeResponse> getData() async {
    final response = await http.get('$_url?limit=$_count');
    return earthQuakeResponseFromJson(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HooterPage(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image(
              image: AssetImage('assets/images/duduk.jpg'),
            ),
          ),
        ),
        title: Text('son depremler'),
        centerTitle: true,
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.warning),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Information(),
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Şiddet', style: titleStyle),
                Text('Konum ve saat', style: titleStyle),
                Text('', style: titleStyle),
              ],
            ),
          ),
          Divider(
            thickness: 5.0,
          ),
          Container(
            height: 500,
            child: Center(
                child: FutureBuilder<EarthQuakeResponse>(
              future: getData(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Veriler yükleniyor...'),
                          SizedBox(
                            height: 50,
                          ),
                          CircularProgressIndicator(),
                        ],
                      ),
                    );
                    break;
                  default:
                    if (snapshot.hasError)
                      return Center(
                        child: Text('Hata: ${snapshot.error}'),
                      );
                    else
                      return ListView.builder(
                        itemCount: snapshot.data.result.length,
                        itemBuilder: (context, index) {
                          List<EarthQuake> response = snapshot.data.result;
                          EarthQuake item = response[index];
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            child: Card(
                              color: CupertinoColors.systemGrey5,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ShowEarthQuake(
                                        earthQuake: response[index],
                                      ),
                                    ),
                                  );
                                },
                                child: ListTile(
                                  leading: Text(
                                    '${item.mag}',
                                    style: titleStyle.copyWith(
                                        fontSize: 20.0, color: Colors.red),
                                  ),
                                  title: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        item.lokasyon,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        item.date,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Text(
                                    'detay',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.teal[800]),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                }
              },
            )),
          ),
        ],
      ),
    );
  }
}
