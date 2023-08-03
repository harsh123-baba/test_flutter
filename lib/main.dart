import "package:flutter/material.dart";
import 'package:test_flutter/pages/cart_page.dart';
import 'package:test_flutter/pages/home_details.dart';
import 'package:test_flutter/pages/home_page.dart';
import 'package:test_flutter/pages/login_page.dart';
// fonts and font awesome
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "package:test_flutter/utils/routes.dart";
import "package:test_flutter/widgets/themes.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext Context) {
    // int days = 30;
    // String name = "Harshit";
    // double pi = 3.14;
    // num temp = 30; // it can also accept 30.5;
    // // if you dont want to mention datatype then use var
    // var day = "Tuesday"; // consider day as string
    // var pis = 3.14; // consider pi as integet/num

    // const piConst = 3.14; // we cannot change this
    // // const vs final -> we can edit final "List". we can't edit const "list"
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(Context),
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.cartRoute: (context) => CartPage(),
        });
  }
}
