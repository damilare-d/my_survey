import 'package:flutter/material.dart';
import 'package:my_survey/data/questiondata.dart';
import 'package:my_survey/screens/personality_screen.dart';
import '../models/category.dart';
import 'finance_screen1.dart';
import 'health_screen.dart';
import 'homepage.dart';
import 'love_screen.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            drawerHeader(context),
            drawerMenu(context),
          ],
        ),
      ),
    );
  }

  Widget drawerHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/mySurvey.png'))),
            ),
          ),
          Text(
            'Honorable Person \n Welcome!',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget drawerMenu(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Home'),
                      content: Text(
                          'why you looking for home??!!!\n get outta here 😀 😃'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomePage()));
                            },
                            child: Text('Click Here')),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('CANCEL'))
                      ],
                    );
                  });
            }),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Love'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoveCategoryPage(
                      loveCategory: SurveyCategoryModel(
                          icon: Icons.favorite,
                          categoryName: 'Love',
                          questions: questions),
                    )));
          },
        ),
        ListTile(
          leading: Icon(Icons.attach_money),
          title: Text('Finance'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FinancecategoryPage(
                      FinanceCategory: SurveyCategoryModel(
                          icon: Icons.money,
                          categoryName: 'Finance',
                          questions: questions),
                    )));
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Personality'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PersonalityCategoryPage(
                      personalityCategory: SurveyCategoryModel(
                          icon: Icons.people,
                          categoryName: 'Love',
                          questions: questions),
                    )));
          },
        ),
        ListTile(
          leading: Icon(Icons.health_and_safety),
          title: Text('Health'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HealthCategoryPage(
                      healthCategory: SurveyCategoryModel(
                          icon: Icons.health_and_safety,
                          categoryName: 'Health',
                          questions: questions),
                    )));
          },
        ),
        ListTile(
          title: Text('CONTACT'),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('My Contact'),
                    content: Text("you can reach me via my e-mail"
                        "damilareakinwale0@gmail.com"),
                  );
                });
          },
        ),
        ListTile(
          title: Text('SIGN OUT'),
          onTap: () {
            //todo put the navigation for signout
          },
        )
      ],
    );
  }
}
