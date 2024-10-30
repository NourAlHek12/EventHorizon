import 'package:event_horizon/Routes/AppPage.dart';
import 'package:event_horizon/Routes/AppRoute.dart';
import 'package:event_horizon/View/Home.dart';
import 'package:event_horizon/View/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoute.home,
      getPages: AppPage.pages,
      home: Home(),


    );
  }
}



