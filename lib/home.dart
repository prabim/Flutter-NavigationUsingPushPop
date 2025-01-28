import 'package:flutter/material.dart';
import 'package:navigator/display.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameTxtCnt = TextEditingController();
  final ageTxtCnt = TextEditingController();
  
  void navigateNextPage(BuildContext context)
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return DisplayPage(name: nameTxtCnt.text, age: ageTxtCnt.text);
    }));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: nameTxtCnt,
                decoration: InputDecoration(
                  labelText: 'Name'
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: ageTxtCnt,
                decoration: InputDecoration(
                  labelText: 'Age'
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                navigateNextPage(context);
              }, child: const Text(
                "Next Page >>",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            )
          ],
        ),
      )
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        "Sample Navigation with Data",
      ),
    );
  }
}