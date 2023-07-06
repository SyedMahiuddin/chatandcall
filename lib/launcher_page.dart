import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mychat01/login_signup/login_page.dart';

class LauncherPage extends StatefulWidget {
  static const String routeName='/';
  const LauncherPage({super.key});

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      Navigator.pushReplacementNamed(
          context, LoginPage.routeName);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return  Container();
  }
}
