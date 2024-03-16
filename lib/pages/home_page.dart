import 'package:app_nckh/Query/query_page.dart';
import 'package:app_nckh/auth/user_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){

    double screenWidth = MediaQuery.of(context).size.width;

    double boxWidth = screenWidth * 0.33;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: OutlinedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QueryPage())
                );
              },
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[150],
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )
                ),
              ),
            ),
          ),
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SizedBox(
                    width: boxWidth,
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
                  child: SizedBox(
                    width: boxWidth,
                    height: 80,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const QueryPage())
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                        ),
                        child: Text (
                          "Lists",
                          style: TextStyle(
                            color: Colors.grey[200],
                          ),
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 1,),
                Expanded(
                  child: SizedBox(
                    width: boxWidth,
                    height: 80,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const UserPage())
                          );
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

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
    );
  }
}
