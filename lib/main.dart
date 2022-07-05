import 'package:flutter/material.dart';
import 'package:my_survey/screens/SplashScreen.dart';
import 'package:my_survey/screens/finance_screen.dart';
import 'package:my_survey/screens/homepage.dart';
import 'package:my_survey/screens/resultScreen.dart';
import 'package:my_survey/screens/welcome_screen.dart';
import 'package:my_survey/stateprovider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => DolapoController(),
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: WelcomeScreen(),
          // FinanceCategoryPage(),
        ));
  }
}
