import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mychat01/login_signup/login_page.dart';

import '../custom_text_field.dart';
import '../home/homeScreen.dart';
import '../utils/colors.dart';
import 'controller/log_sign_controller.dart';

class SignUpPage extends StatelessWidget {
  static const String routeName='/signUpPage';
  const SignUpPage({super.key});

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
                        height: 510.h,
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
                                'Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Colors.white),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              CustomTextField(
                                controller: logSignController.mailController,
                                borderColor: Colors.white,
                                prefixIcon: Icons.mail_outline,
                                // hintText: 'Enter Email',
                                labelText: 'Email',
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              CustomTextField(
                                controller: logSignController.mailController,
                                borderColor: Colors.white,
                                prefixIcon: Icons.person_outline_sharp,
                                // hintText: 'Enter Email',
                                labelText: 'Name',
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              CustomTextField(
                                controller: logSignController.mailController,
                                borderColor: Colors.white,
                                prefixIcon: Icons.phone_android,
                                // hintText: 'Enter Email',
                                labelText: 'Mobile',
                              ),
                              SizedBox(
                                height: 15.h,
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
                              SizedBox(
                                height: 15.h,
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
                                      'Signup',
                                      style: TextStyle(color: Colors.white,fontSize: 18.h),
                                    )),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Already have an account?',
                                    style: TextStyle(
                                        color: Colors.white,fontSize: 15.h
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  TextButton(onPressed: (){
                                    Navigator.pushReplacementNamed(
                                        context, LoginPage.routeName);
                                  }, child:  Text('Login',style: TextStyle(fontSize: 15.h,color: Colors.black),))
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
        ]
      ),
    ));
  }
}
