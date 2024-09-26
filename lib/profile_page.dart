import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'side_menu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? username;

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  void _loadUsername() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: const SideMenu(),
      body: Container(
        color: Colors.pink[50],
        child: Center(
          child: Text(
            username != null ? 'Hello, $username' : 'Loading...',
            style: const TextStyle(fontSize: 24, color: Colors.pinkAccent),
          ),
        ),
      ),
    );
  }
}
