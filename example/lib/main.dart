import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:night_owl/night_owl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final alias = 'shekohex';
    final aliasSha256 = sha256.convert(alias.codeUnits).toString();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NightOwl Example'),
        ),
        body: Center(
          child: NightOwl(hash: aliasSha256),
        ),
      ),
    );
  }
}
