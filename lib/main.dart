import 'package:flutter/material.dart';
import 'package:instagram/screens/homepage.dart';
import 'package:instagram/screens/loginpage.dart';
import 'package:instagram/utils/routes.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) =>Loginpage(),
        MyRoutes.HomePageRoutes:(context)=>HomePage(),
      }
    );
  }
}

