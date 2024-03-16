import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class QueryPage extends StatefulWidget {
  const QueryPage({super.key});

  @override
  State<QueryPage> createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  var searchName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 40,
          child: TextField(
            onChanged: (value) {
              setState(() {
                searchName = value;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              filled: true,
              fillColor: Colors.grey[200],
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('user')
            .orderBy('username')
            .startAt([searchName])
            .endAt([searchName + "\uf8ff"]).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          // Display data when available
          var data = snapshot.data?.docs ?? [];
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var username = data[index].get('username');
              // Customize how you want to display each item
              return ListTile(
                title: Text(username),
                // Add more widgets to display additional information
              );
            },
          );
        },
      ),
    );
  }
}
