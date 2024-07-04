import 'dart:async';

import 'package:ar_furniture_app/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  Firebase.initializeApp(options: const FirebaseOptions( apiKey: "AIzaSyBZVjxFqHz1YKeGT6yDbm6z6_wr8NNlVK8",
  authDomain: "ar-furniture-app-4d612.firebaseapp.com",
  projectId: "ar-furniture-app-4d612",
  storageBucket: "ar-furniture-app-4d612.appspot.com",
  messagingSenderId: "913003801662",
  appId: "1:913003801662:web:2632107c8c94c0e8bf356f",
  measurementId: "G-79CS3304X3"));
  try
  {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
  catch (errorMsg)
  {
    print("Error::" + errorMsg.toString());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter IKEA Clone App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

