import 'package:flutter/material.dart';
import 'package:flutter_revision/pages/cart_page.dart';
import 'package:flutter_revision/pages/login_page.dart';
import 'package:flutter_revision/utils/routes.dart';
import 'package:flutter_revision/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'core/store.dart';
import 'pages/home_page.dart';


void main(){
  runApp(
    VxState
    (
      store: MyStore(),
      child: MyApp(),
    )
    );
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //  -- datatypes in dart -- 
    //bool, double, num(can take both int and double)
    //var(any,compiler decides), const
    //final(like const but can be added into it)
   return MaterialApp(
     themeMode: ThemeMode.system,
     theme:MyTheme.lightTheme(context),
     darkTheme: MyTheme.darkTheme(context),
       debugShowCheckedModeBanner: false,
       initialRoute: MyRoutes.homeRoute,
     routes: {
       "/" : (context)=>LoginPage(),
       MyRoutes.homeRoute: (context)=>HomePage(),
       MyRoutes.loginRoute : (context)=>LoginPage(),
       MyRoutes.cartRoute : (context)=>CartPage()
     },
   );
  }
}
// widget tree -> element tree -> render tree.
// Widgets are immutable whereas elements can update themselves.
// size go up, constraints go down, body sets the position.
// context is just an element which tells location of widget in the tree.