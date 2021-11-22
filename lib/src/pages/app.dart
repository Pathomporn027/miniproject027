import 'package:miniproject/src/configs/app_route.dart';
import 'package:miniproject/src/configs/app_setting.dart';
import 'package:miniproject/src/pages/home/home_page.dart';
import 'package:miniproject/src/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoute().getAll,
      theme: ThemeData(primaryColor: Colors.black),
      home: HomePage(),
      // home: FutureBuilder(
      //   future: SharedPreferences.getInstance(),
      //   builder: (context, snapshot) {
      //     if(!snapshot.hasData){
      //       return Container(
      //         color: Colors.white,
      //       );
      //      }else {
      //       final token = snapshot.data.getString(AppSetting.userNameSetting ?? '');
      //       if (token != null) {
      //         return HomePage();
      //       }else {
      //         return LoginPage();
      //       }
      //     }
      //   },
      // ),
    );
  }
} //end class
