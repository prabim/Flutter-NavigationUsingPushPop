import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key, this.name, this.age});

  final String? name;
  final String? age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Display Data',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              name.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              )
            ),
            Text(
              age.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              )
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Return")
            )
          ],
        ),
      )
    );
  }
}