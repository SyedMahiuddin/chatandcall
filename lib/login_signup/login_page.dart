import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mychat01/home/homeScreen.dart';
import 'package:mychat01/login_signup/controller/log_sign_controller.dart';
import 'package:mychat01/login_signup/sign_up.dart';

import '../custom_text_field.dart';
import '../utils/colors.dart';

class LoginPage extends StatelessWidget {
  static const String routeName='/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LogSignController logSignController = Get.put(LogSignController());
    return  SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              child: Opacity(
                opacity: 0.2,
                child: Image.network("https://img.freepik.com/premium-vector/social-networks-dating-apps-vector-seamless-pattern_341076-469.jpg",
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
              ),
            ),
          ),
          Opacity(
            opacity: 0.7,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding:  EdgeInsets.only(left: 30.w, right: 30.w, top: 0.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 450.h,
                        width: 400.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              logoblue,
                              logogold,
                            ],
                          ),
                          color: themeColorBlue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: logogold, width: 1.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Log In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Colors.white),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              CustomTextField(
                                controller: logSignController.mailController,
                                borderColor: Colors.white,
                                prefixIcon: Icons.mail_outline,
                                // hintText: 'Enter Email',
                                labelText: 'Email',
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Obx(()=>SizedBox(
                                height: 50.h,
                                child: TextFormField(
                                  controller: logSignController.passController,
                                  obscureText: !logSignController.logpassVisible.value,
                                  decoration:  InputDecoration(
                                      prefixIcon: Icon(Icons.lock_outlined,color: Colors.white,),
                                      focusedBorder:OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white, width: 1.2)),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black, width: 1.2)),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black, width: 1.2)),
                                      suffixIcon: logSignController.logpassVisible.value?IconButton(onPressed: (){
                                        logSignController.logpassVisible.value? logSignController.logpassVisible.value=false: logSignController.logpassVisible.value=true;
                                      }, icon: Icon(Icons.visibility,color: Colors.white)):
                                      IconButton(onPressed: (){
                                        logSignController.logpassVisible.value? logSignController.logpassVisible.value=false: logSignController.logpassVisible.value=true;
                                      }, icon: Icon(Icons.visibility_off,color: Colors.white,)),
                                      labelText: 'Password',
                                      labelStyle: TextStyle(color: Colors.black)
                                  ),
                                ),
                              ),),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: logoblue

                                      ,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10), // <-- Radius
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, HomeScreen.routeName);
                                    },
                                    child:  Text(
                                      'Login',
                                      style: TextStyle(color: Colors.white,fontSize: 18.h),
                                    )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Dont have an account?',
                                    style: TextStyle(
                                        color: Colors.white,fontSize: 15.h
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  TextButton(onPressed: (){
                                    Navigator.pushReplacementNamed(
                                        context, SignUpPage.routeName);
                                  }, child:  Text('Sign Up',style: TextStyle(fontSize: 15.h,color: Colors.black),))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    ));
  }
}
