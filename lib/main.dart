import 'package:alazhar/login.dart';
import 'package:alazhar/quote.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: defaultFirebaseOptions);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? username = prefs.getString("username");
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedSplashScreen(
      duration: 500,
      backgroundColor: Color.fromRGBO(138, 30, 100, 1),
      nextScreen: username == null ? Login() : Quotepage(),
      splash: Image.asset(
        'asset/logo.jpg',
      ),
      splashIconSize: double.infinity,
    ),
  ));
}

const defaultFirebaseOptions = FirebaseOptions(
    apiKey: 'AIzaSyD-MUHk5r337TzoOuw0EyDsbUx93Go87AA',
    databaseURL: 'https://alazhar-83202-default-rtdb.firebaseio.com/',
    projectId: 'alazhar-83202',
    appId: '1:700589188901:android:ebd6a40576a5a772f41ccc',
    messagingSenderId: '');
