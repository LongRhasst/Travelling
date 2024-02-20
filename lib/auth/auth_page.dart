import 'package:app_nckh/pages/login_page.dart';
import 'package:flutter/material.dart';
import '../pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  //intially, show the login page
  bool showLoginPage = true;

  void toggleScreen(){
    showLoginPage = !showLoginPage;
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(showRegisterPage: toggleScreen);
    }
    else{
      return RegisterPage(showLoginPage: toggleScreen);
    }
  }
}
