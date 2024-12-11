import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laptop_app/users/authentication/login_screen.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Laptop App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: FutureBuilder(
        builder: (context, dataSnapShot)
        {
          return LoginScreen();
        }, future: null, 
      ),
    );
  }
}

