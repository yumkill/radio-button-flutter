import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Button',
      theme: ThemeData(),
      home: LayarDepan(),
    );
  }
}

class LayarDepan extends StatefulWidget {
  _LayarDepanState createState() => _LayarDepanState();
}

class _LayarDepanState extends State<LayarDepan> {
  String? bahasa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Radio<String>(
              value: 'Dart',
              groupValue: bahasa,
              onChanged: (String? value) {
                setState(() {
                  bahasa = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Dart'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Kotlin',
              groupValue: bahasa,
              onChanged: (String? value) {
                setState(() {
                  bahasa = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Kotlin'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'React Native',
              groupValue: bahasa,
              onChanged: (String? value) {
                setState(() {
                  bahasa = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('React Native'),
          ),
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$bahasa selected'),
        duration: Duration(seconds: 1),
      ),
    );
  } // void nya masih di dalam class
}
