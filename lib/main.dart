import 'package:flutter/material.dart';
import 'package:yma_app/screens/home_screen.dart';
import 'package:yma_app/utils/db_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DbHelper().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}
