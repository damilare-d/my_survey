import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogInWidget extends StatefulWidget {
  const LogInWidget({Key? key}) : super(key: key);

  @override
  State<LogInWidget> createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
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
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          TextField(
              controller: emailController,
              textInputAction: TextInputAction.next),
          TextField(
            controller: passwordController,
            textInputAction: TextInputAction.next,
          ),
          ElevatedButton(
            child: Text('Sign In'),
            onPressed: signIn,
          ),
          ElevatedButton(
            child: Text('Register'),
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
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }
}
