/// The main entry point for the Bill Splitter application

library;

import 'package:flutter/material.dart';

void main() => runApp(const BillSplitterApp());

class BillSplitterApp extends StatelessWidget {
  const BillSplitterApp({super.key});
  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Bill Splitter',
        home: Scaffold(body: Center(child: Text('Bill Splitter'))),
      );
}
