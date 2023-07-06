import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mychat01/home/homeScreen.dart';
import 'package:mychat01/home/message_pages/message.dart';
import 'package:mychat01/home/message_pages/sent_help_message.dart';
import 'package:mychat01/home/message_pages/sent_message.dart';
import 'package:mychat01/launcher_page.dart';
import 'package:mychat01/login_signup/login_page.dart';
import 'package:mychat01/login_signup/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 860),
      minTextAdapt: true,
      splitScreenMode: true,
        builder: (context, child)
    {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: LauncherPage.routeName,
      routes: {
        LauncherPage.routeName:(context)=> LauncherPage(),
        HomeScreen.routeName: (context)=>HomeScreen(),
        LoginPage.routeName: (context)=>LoginPage(),
        SignUpPage.routeName: (context)=>SignUpPage(),
        Message.routeName: (context)=>Message(),
        SentMessage.routeName: (context)=>SentMessage(),
        HelpMessage.routeName: (context)=>HelpMessage(),
      },
    );});
  }
}

