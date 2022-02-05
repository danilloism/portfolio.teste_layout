import 'package:curso_layout/pages/tabs.page.dart';
import 'package:curso_layout/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Tema().claro,
      home: const DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
