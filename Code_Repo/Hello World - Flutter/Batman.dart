import 'package:flutter/material.dart';

void main() {
  // All Flutter Apps starts from main function
  //I'm rich App - Angela
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('The Batman 2022 - DC')),
          backgroundColor: Color.fromARGB(255, 52, 63, 86),
        ),
        backgroundColor: Color.fromARGB(255, 255, 245, 253),
        body: Center(
          child: Image(
            // image: NetworkImage(
            //     'https://brandpalettes.com/wp-content/uploads/2018/09/superman_logo-300x225.png'),
            image: AssetImage(
                'images/batman.png'), // We have to add it in asset of YAML after adding in the images dir
          ),
        ),
      ),
    ),
  );
}
