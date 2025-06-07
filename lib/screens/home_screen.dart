import 'package:flutter/material.dart';
import 'package:yma_app/widgets/side_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Young Mizo Association")),
      drawer: SideMenu(),
      body: Column(children: [Text("Body tur...")]),
    );
  }
}
