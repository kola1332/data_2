import 'package:data_2/database.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Database().read();
    return const MaterialApp(debugShowCheckedModeBanner: false);
  }
}
