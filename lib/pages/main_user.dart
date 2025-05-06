import 'package:flutter/material.dart';

class MainUserPage extends StatefulWidget {
  const MainUserPage({super.key});

  @override
  _MainUserPageState createState() => _MainUserPageState();
}

class _MainUserPageState extends State<MainUserPage> {  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Main User Page")),
    );
  }
}
