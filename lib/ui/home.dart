import 'package:browvieapp/ui/browviepage.dart';
import 'package:flutter/material.dart';

class BrowvieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        title: Text('Browvie'),
        centerTitle: false,
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: BrowviePage(),
    );
  }
}
