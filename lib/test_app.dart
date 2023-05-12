import 'package:flutter/material.dart';
import 'package:yako_task/src/pages/main_page.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
