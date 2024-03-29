import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      // Use FirebaseAuth to send a password reset email
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim());
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text("Password reset link sent! Check your email"),
            );
          },
        );
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException by displaying an AlertDialog with the error message
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            "Enter your Email and We will send you a password reset link",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20)
          ),

          SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Email',
                    fillColor: Colors.grey[200],
                    filled: true
                ),
              )
          ),

          SizedBox(height: 10),
          MaterialButton(
            onPressed: passwordReset,
            color: Colors.deepPurple[200],
            child: Text('Reset Password'),
          )
        ],
      ),
    );
  }
}
