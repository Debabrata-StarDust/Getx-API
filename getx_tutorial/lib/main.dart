import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_tutorial/common/all_string.dart';
import 'package:getx_tutorial/common/app_Colors.dart';
import 'package:getx_tutorial/controller/buinding.dart';
import 'package:getx_tutorial/screens/homescreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     // initialBinding: HomeBinding(),
      debugShowCheckedModeBanner: false,
        title:AppString.fetchData ,
        theme: ThemeData(
         primarySwatch:AppColors.purpleColor ,
        ),
        home: Homescreen());
  }
}
