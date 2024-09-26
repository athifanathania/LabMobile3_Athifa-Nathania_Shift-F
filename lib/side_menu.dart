import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.pink[50],
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.pinkAccent),
              title: const Text('Home',
                  style: TextStyle(color: Colors.pinkAccent)),
              onTap: () => Navigator.pushReplacementNamed(context, '/home'),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.pinkAccent),
              title: const Text('Profile',
                  style: TextStyle(color: Colors.pinkAccent)),
              onTap: () => Navigator.pushReplacementNamed(context, '/profile'),
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.pinkAccent),
              title: const Text('About',
                  style: TextStyle(color: Colors.pinkAccent)),
              onTap: () => Navigator.pushReplacementNamed(context, '/about'),
            ),
          ],
        ),
      ),
    );
  }
}
