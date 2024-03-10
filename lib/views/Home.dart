import 'package:flutter/material.dart';
import 'package:shop_app/views/HomeScreen.dart';
import 'ContactScreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("SHOP"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              arrowColor: Colors.blue,
              accountName: Text("Khmao Chhaily"),
              accountEmail: Text('chhaliykhmao@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://4kwallpapers.com/images/walls/thumbs/15478.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Contacts'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactScreen()),
                );
              },
            ),
            ListTile(
              title: const Text("IPad"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreenUI()),
                );
              },
            )
          ],
        ),
      ),
      body: const Center(
          child: Text(
        'Your content gose here',
        style: TextStyle(color: Colors.red, fontFamily: 'sans', fontSize: 24),
      )),
    ));
  }
}
