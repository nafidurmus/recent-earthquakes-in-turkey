import 'package:earthquakes/contants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Card openUrl() {
  return Card(
    color: Colors.red[200],
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Text(
            'kaynak için tıklayınız',
            style: titleStyle,
          ),
          onTap: _launchURL,
        ),
      ],
    ),
  );
}

_launchURL() async {
  const url =
      'https://www.afad.gov.tr/deprem-oncesi-ani-ve-sonrasi-alabileceginiz-onlemleri-biliyor-musunuz';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
