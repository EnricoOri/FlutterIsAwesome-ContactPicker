import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                onPressed: () => _getAContact(),
              ),
              Text(_contact ?? '')
            ],
          ),
        ),
      ),
    );
  }

  _getAContact() async {
    String contact;
    try {
      contact = await FlutterIsAwesome.getAContact();
    } on PlatformException {
      contact = 'Failed to get contact.';
    }
    if (!mounted) return;
    setState(() {
      _contact = contact;
    });
  }
}
