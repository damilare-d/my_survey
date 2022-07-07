import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_survey/screens/onBoarding%20screens/signIn_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen1(),
    );
  }
}

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcc7722),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/mySurvey.png'))),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '      🙂 🙃 😉 😌 \n Welcome to mySurvey \n       😀 😃 😄 😁',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
            SizedBox(
              height: 100,
            ),
            MaterialButton(
              color: Colors.purpleAccent,
              disabledColor: Colors.greenAccent,
              disabledTextColor: Colors.purpleAccent,
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Navigator.push(context, ConcentricPageRoute(builder: (ctx) {
                  return const WelcomeScreen2();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(75),
                  image: DecorationImage(
                      image: AssetImage('assets/images/mySurvey.png'))),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "We are so glad to have you"
              " \n                   it's \n"
              "A survey curtailed for you!!!",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
            SizedBox(
              height: 100,
            ),
            MaterialButton(
                color: Colors.lightBlueAccent,
                disabledColor: Colors.purpleAccent,
                disabledTextColor: Colors.lightBlueAccent,
                child: const Text(
                  " 🙂 TAP 🙃 ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  Navigator.push(context, ConcentricPageRoute(builder: (ctx) {
                    return const WelcomeScreen3();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
                color: Colors.amberAccent,
                disabledColor: Colors.lightBlueAccent,
                disabledTextColor: Colors.amberAccent,
                child: const Text(
                  "😉 Get onBoard!!! 😉",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                onPressed: () {
                  Navigator.push(context, ConcentricPageRoute(builder: (ctx) {
                    return const SignInScreen();
                  }));
                }),
          ),
        ],
      ),
    );
  }
}
