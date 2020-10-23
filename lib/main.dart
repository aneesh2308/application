import 'package:application/screens/dashboard.dart';
import 'package:application/screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:application/services/authservice.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(MyApp());
  }
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: LoginPage(),
     routes:<String,WidgetBuilder>{
           'landingpage':(BuildContext context)=> new MyApp(),
           '/auth':(context)=>AuthService().handleAuth(),
           '/login':(BuildContext context)=>DashboardPage(),
     },
   );
 }
}