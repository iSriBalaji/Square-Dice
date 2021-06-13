import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 53, 31, 57),
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image(
                image: AssetImage('images/profile.png'),
              ),
              // foregroundImage: AssetImage('images/profile.png'),
              radius: 69,
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'Sri Balaji ',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'FredokaOne',
                fontSize: 36,
                letterSpacing: 2.3,
                wordSpacing: 2.3,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 0.23,
            ),
            Text(
              'Muruganandam',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'FredokaOne',
                fontSize: 36,
                letterSpacing: 2.3,
                wordSpacing: 2.3,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'DATA ENGINEER AT TCS',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'JosefinSans',
                fontSize: 23,
                letterSpacing: 4.6,
                wordSpacing: 2.3,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 23.0,
              width: 230.0,
              child: Divider(
                color: Colors.white70,
                thickness: 2.3,
              ),
            ),
            Card(
              color: Colors.teal[500],
              margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 46.0),
              // padding: EdgeInsets.all(18.0),
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text('+91 9789968131',
                        style: TextStyle(
                          color: Colors.white,
// fontFamily: 'JosefinSans',
                          fontSize: 18,
                          letterSpacing: 4.6,
                          wordSpacing: 2.3,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
            ),
            Card(
              color: Colors.teal[500],
              margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 46.0),
              // padding: EdgeInsets.all(18.0),
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    title: Text('sribalaji@pm.me',
                        style: TextStyle(
                          color: Colors.white,
// fontFamily: 'JosefinSans',
                          fontSize: 18,
                          letterSpacing: 4.6,
                          wordSpacing: 2.3,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
