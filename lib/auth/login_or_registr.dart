import 'package:flutter/material.dart';
import 'package:green_chat/pages/login_page.dart';
import 'package:green_chat/pages/register_page.dart';

class LoginOrRegistr extends StatefulWidget {
  const LoginOrRegistr({super.key});

  @override
  State<LoginOrRegistr> createState() => _LoginOrRegistrState();
}

class _LoginOrRegistrState extends State<LoginOrRegistr> {

  bool showLoginPage = true;

  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return LoginPage(
        onTap: togglePages,
      );
    }else{
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
