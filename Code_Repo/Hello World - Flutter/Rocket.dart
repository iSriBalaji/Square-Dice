import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 238, 234),
        appBar: AppBar(
          title: Center(child: Text('The Rocket Productive')),
          backgroundColor: Color.fromARGB(255, 18, 110, 130),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.science),
              label: 'Science',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Like',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.room),
              label: 'Loc',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Set',
              backgroundColor: Colors.pink,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('A Rocket which helps humans to find all the solutions!'),
            Center(
              child: Image(
                image: NetworkImage(
                    'https://image.freepik.com/free-vector/astronaut-riding-rocket-icon-illustration-spaceman-mascot-cartoon-character-science-icon-concept-isolated_138676-970.jpg'),
                height: 200,
                width: 200,
              ),
            ),
            Center(
              child: Image(
                image: AssetImage('images/rocket.png'),
                height: 200,
                width: 200,
              ),
            ),
            Text('Dev by Sri Balaji')
          ],
        ),
      ),
    ),
  );
}
