import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/mySurvey.png'))),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "E-mail Address"),
                controller: emailController,
                textInputAction: TextInputAction.next),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
              controller: passwordController,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Sign In'),
              onPressed: signIn,
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
              child: Text('Pls Register HERE'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Register'),
                        content: Text("Hey signIn page under construction"
                            "please use test@gmail.com as the username and"
                            "123456 as the password"),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(child: CircularProgressIndicator());
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    //Navigator.of (context) not working!
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
