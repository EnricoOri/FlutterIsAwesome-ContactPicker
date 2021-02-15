import 'package:flutter/material.dart';
import 'package:flutter_is_awesome/flutter_is_awesome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _contact = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter is Awesome'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Picker'),
                onPressed: () async {
                  _contact = await FlutterIsAwesome.getAContact();
                  print(_contact);
                  setState(() {

                  });
                },
              ),
              Text(
                  _contact ?? ''
              )
            ],
          ),
        ),
      ),
    );
  }
}
