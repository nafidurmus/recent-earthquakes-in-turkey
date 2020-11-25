import 'package:flutter/material.dart';

Widget buildCard(String description) {
  return Card(
    color: Colors.grey[100],
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        description,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );
}
