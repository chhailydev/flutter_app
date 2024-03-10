import 'package:flutter/material.dart';
import 'package:shop_app/views/Home.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.blue,
        body: const SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://4kwallpapers.com/images/walls/thumbs/15478.jpg'),
            ),
            SizedBox(
              width: 40,
              height: 20,
            ),
            Text(
              "Khmao Chhaily",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Source Sans Pro',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
              margin: EdgeInsets.all(20.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                  size: 20.0,
                ),
                title: Text(
                  '+885 186 258 222',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 20.0,
                ),
                title: Text(
                  'chhailykhmao@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20.0,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
