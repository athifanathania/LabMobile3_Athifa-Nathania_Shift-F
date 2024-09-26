import 'package:flutter/material.dart';
import 'side_menu.dart';

class AboutPage extends StatelessWidget{
  const AboutPage({Key? key}) : super(key: key);

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Athifa Shop'),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: const SideMenu(),
      body: Container(
        color: Colors.pink[50],
        alignment: Alignment.center,
        child: const Text(
            'Athifa Shop adalah aplikasi pilihan Anda untuk belanja online!',
            style: TextStyle(fontSize: 18, color: Colors.pinkAccent),
            textAlign: TextAlign.center,
          ),
        ),
      );
  }
}