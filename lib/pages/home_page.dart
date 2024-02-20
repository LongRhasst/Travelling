import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: MaterialButton(onPressed:(){
          FirebaseAuth.instance.signOut();
        },
        color: Colors.deepPurple,
        child: Text(
          'Sign Out',
          style: TextStyle(
            color: Colors.grey[300]
          ),
        )
        ),
      )
    );
  }
}