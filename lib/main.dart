import 'package:flutter/material.dart';
import 'package:mytask/screens/category_screen.dart';
import 'package:mytask/screens/page3_screen.dart';
import 'screens/toihair_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home:CategoriesScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => CategoriesScreen(),
        ToiHairScreen.RoutName: (context) => ToiHairScreen(),
        ScreenPage3.RoutName: (context) => ScreenPage3(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoriesScreen(),
    );
  }
}
/*child: ListView.builder(
          itemBuilder: (context, index) {
            return Page3_Item(
              name: select[index].name,
              image: select[index].image,
            );
          },
          itemCount: select.length,
        ),*/
