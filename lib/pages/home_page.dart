import 'package:app_nckh/auth/user_page.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                        ),
                        child: Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.grey[200],
                          ),
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 1,),
                Expanded(
                  child: Container(
                    height: 80,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                        ),
                        child: Text (
                          "search",
                          style: TextStyle(
                            color: Colors.grey[200],
                          ),
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 1,),
                Expanded(
                  child: Container(
                    height: 80,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const UserPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Text(
                          "User",
                          style: TextStyle(
                            color: Colors.grey[200],
                          ),
                        )
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      )
    );
  }
}