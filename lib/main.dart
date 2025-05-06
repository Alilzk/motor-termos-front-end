import 'package:flutter/material.dart';
import 'services/routes.dart'; // Import the routes file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: generateRoute, // Use the route setup from route.dart
    );
  }

 
}
