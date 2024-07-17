import 'package:flutter/material.dart';
import 'package:myapp/transportasi/about_transportasi.dart';
import 'package:myapp/transportasi/home_transportasi.dart';
import 'package:myapp/transportasi/profile.dart';
import 'package:myapp/transportasi/transportasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/about': (context) => AboutTransportasi(),
        '/home': (context)=> HomeTransportasi(),
        '/transportasi': (context) => ListTransportasi(),
        '/profile': (context) => ProfilePage(),
        
      },
      initialRoute: '/home',
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeTransportasi()
    );
  }
}