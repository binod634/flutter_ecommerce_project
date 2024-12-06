import 'package:daraj/screens/homepage.dart';
import 'package:daraj/screens/profile.dart';
import 'package:daraj/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// entire app design.
class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // first page.
      home: const MyHomePage(title: 'Daraj'),
    );
  }
}
