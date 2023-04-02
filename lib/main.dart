import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int display = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("My Tajbi App"),),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("$display", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        display = display +1;
                      });
                    },
                    child: Text("Add")),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        display = display - 1;
                      });
                    },
                    child: Text("Sub")),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        display = 0;
                      });
                    },
                    child: Text("Refresh")),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
