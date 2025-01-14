import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_chat/auth/login_or_registr.dart';

import '../pages/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //user logged in
        if(snapshot.hasData){
          return const HomePage();
        }

        // user is NOT logged in
        else {
          return const LoginOrRegistr();
        }
      },
    );
  }
}
