import 'package:earthquakes/contants/text_style.dart';
import 'package:earthquakes/views/information/before_tab.dart';
import 'package:flutter/material.dart';

import 'information/after_tab.dart';
import 'information/during_tab.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deprem Öncesi,Anı ve Sonrası Yapılacaklar'),
      ),
      body: TabBarView(
        children: <Widget>[
          BeforeTab(),
          DuringTab(),
          AfterTab(),
        ],
        controller: tabController,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue[100],
        child: TabBar(
          tabs: <Tab>[
            Tab(
              child: Text(
                'Öncesinde',
                style: titleStyle.copyWith(color: Colors.black),
              ),
            ),
            Tab(
              //text: 'Anında',
              child: Text(
                'Anında',
                style: titleStyle.copyWith(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Sonrasında',
                style: titleStyle.copyWith(color: Colors.black),
              ),
            ),
          ],
          controller: tabController,
        ),
      ),
    );
  }
}
