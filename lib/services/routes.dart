import 'package:flutter/material.dart';
import 'package:motor_termos_front_end/pages/login_page.dart';
import 'package:motor_termos_front_end/pages/main_user.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => CheckAuthorization());
    case '/login':
      return MaterialPageRoute(builder: (context) => LoginPage());
    case '/usermain':
      return MaterialPageRoute(builder: (context) => MainUserPage());
    default:
      return MaterialPageRoute(builder: (context) => LoginPage());
  }
}

class CheckAuthorization extends StatelessWidget {
  CheckAuthorization({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
