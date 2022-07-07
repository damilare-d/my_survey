import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_survey/screens/onBoarding%20screens/login_screen.dart';
import '../../main.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name"),
                  textInputAction: TextInputAction.next),
              SizedBox(height: 10),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Email"),
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"),
                  textInputAction: TextInputAction.next),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Sign Up'),
                onPressed: signUp,
              ),
              TextButton(
                  child: Text('already registered?..SIGN IN here'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LogInScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    ;
    //Navigator.of (context) not working!
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
