import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';

class HelpMessage extends StatefulWidget {
  static const String routeName='/helpmessage';
  const HelpMessage({Key? key}) : super(key: key);

  @override
  State<HelpMessage> createState() => _HelpMessageState();
}

class _HelpMessageState extends State<HelpMessage> {
  final textcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(toolbarHeight: 60,backgroundColor:const Color(0xFFFBFBFB),elevation: 0, automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.fromLTRB(0.w,18.h,10.w,8.h),
          child: Row(
            children: [
              IconButton(
                  onPressed: (){
                    Get.back();
                  },
                  padding:EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
              SizedBox(width: 20.w,),
              const Icon(Icons.account_circle,color: themeColorBlue,size: 25,),
              SizedBox(width: 8.w,),
              Text('Customer Support',style: TextStyle(fontSize: 16.sp,color:Colors.black,fontWeight: FontWeight.w500),),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height-100,width: MediaQuery.of(context).size.width,),
            Positioned(
              bottom: 30.h,
              top: 0.1,
              left: 13.w,
              child:  SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 40.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.account_circle,color: themeColorBlue,size: 25,),
                            SizedBox(width: 8.w,),
                            Text('Customer Support',style: TextStyle(fontSize: 18.sp,color:Colors.black,fontWeight: FontWeight.w400),),
                          ],
                        ),
                        Text('Online',style: TextStyle(fontSize: 18.sp,color: themeColorBlue),),
                        Text('Sun, Apr 22 7:30 PM',style: TextStyle(fontSize: 14.sp),),
                        SizedBox(height: 20.h,)
                      ],
                    ),
                    SizedBox(
                     // height: 33*50,
                      width: MediaQuery.of(context).size.width-24,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          reverse: false,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (context, index){
                            return  Padding(
                              padding: EdgeInsets.fromLTRB(0,10.h,0,10.h),
                              child: BubbleNormal(
                                bubbleRadius:5,
                                text: index==49?'Hello':'bubble normal with tail',
                                isSender: index%2!=0?true:false,
                                color: index%2==0?Color(0xFFF8F8F8):Color(0xFFD4E9F8),
                                tail: true,
                                textStyle: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0.1.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(14.0.w,14.0.w,14.0.w,6.0.w),
                child: Container(
                  height: 54.h,
                  width: MediaQuery.of(context).size.width-28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF5F5F5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: textcontroller,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.telegram,color: themeColorBlue,size: 30.sp,),
                          border: InputBorder.none,
                          filled: false,
                          hintStyle:  TextStyle(color:Colors.grey,fontSize: 14.sp ),
                          hintText: ' Type your opinion.....'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
