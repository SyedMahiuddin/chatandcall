import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mychat01/home/message_pages/message.dart';
import 'package:mychat01/login_signup/controller/log_sign_controller.dart';

import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

late AnimationController _controller;
late Animation<int> _animation;
late Animation<int> _animation1;
int targetValue = 204; // The final value for the counter
int targetValue1 = 103; // The final value for the counter
bool isHovered = false;// The final value for the counter
bool isHovered1 = false;// The final value for the counter// The final value for the counter
class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    _animation = IntTween(begin: 0, end: targetValue).animate(_controller);
    _animation1 = IntTween(begin: 0, end: targetValue1).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    LogSignController logSignController = Get.put(LogSignController());
    return  SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                logoblue,
                logoblue.withOpacity(0.2),
              ],
            ),
            color: themeColorBlue,
          ),
          child:   Column(
            children: [
              SizedBox(height: 35.h,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100.w,width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90)
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                          child: Image.network("https://img.freepik.com/free-photo/portrait-man-laughing_23-2148859448.jpg?w=2000"),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width-120.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Hey",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500,color: Colors.grey),),
                                Row(
                                  children: [
                                    IconButton(onPressed: (){
                                      Navigator.pushNamed(
                                          context, Message.routeName);
                                    },padding: EdgeInsets.all(0),constraints: BoxConstraints(), icon: Icon(Icons.chat_bubble_outlined,size: 30.sp,)),
                                    SizedBox(width: 10.h,),
                                    IconButton(onPressed: (){},padding: EdgeInsets.all(0),constraints: BoxConstraints(), icon: Icon(Icons.data_saver_off_rounded,size: 30.sp,)),
                                    SizedBox(width: 10.h,),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Text("Andrew Flacker",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child: Padding(
                          padding:  EdgeInsets.fromLTRB(25.0,12,25,12),
                          child: Center(
                            child: Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.person_outline_sharp,color: Colors.blue,size: 30.sp,)),
                                AnimatedBuilder(
                                  animation: _animation,
                                  builder: (BuildContext context, Widget? child) {
                                    return Text(
                                      _animation.value.toString(),
                                      style: TextStyle(
                                        fontSize: 35.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    );
                                  },
                                ),  ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      Card(
                        child: Padding(
                          padding:  EdgeInsets.fromLTRB(25.0,12,25,12),
                          child: Center(
                            child: Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.share_location_outlined,color: Colors.blue,size: 30.sp,)),
                                AnimatedBuilder(
                                  animation: _animation1,
                                  builder: (BuildContext context, Widget? child) {
                                    return Text(
                                      _animation1.value.toString(),
                                      style: TextStyle(
                                        fontSize: 35.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    );
                                  },
                                ),  ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text("Your Peoples",style: TextStyle(fontSize: 40.sp,fontWeight: FontWeight.w500,color: Colors.grey.withOpacity(0.5)),)
                ,
              ),
              SizedBox(height: 15,),
              Obx(()=>Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          border: Border.all(color: Colors.black,width: 0.5),
                          color: Colors.black.withOpacity(0.2)
                      ),
                      child:Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.filter_list_rounded,size: 35,color: Colors.black,),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    logSignController.filter.value=='Online'?
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black,width: 0.5),
                          color: Colors.black.withOpacity(0.2)
                      ),
                      child:Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child:Row(
                            children: [
                              Text("Online",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                              Icon(Icons.online_prediction_rounded,color: Colors.black,)
                            ],
                          )
                          ,
                        ),
                      ),
                    ):
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.black,width: 0.5),
                          color: Colors.black.withOpacity(0.2)
                      ),
                      child:Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child:Row(
                            children: [
                              Text("Nearby",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500,color: Colors.black),),
                              Icon(Icons.near_me_outlined,color: Colors.black,)
                            ],
                          )
                          ,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Obx(() =>Container(
                      height: 50.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 0.2)),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: DropdownButton<String>(
                          isDense: true,
                          isExpanded: true,
                          underline: const SizedBox(),
                          value: logSignController.filter.value,
                          items: logSignController.filters
                              .map(
                                (data) => DropdownMenuItem(
                              value: data,
                              child: Text(
                                data,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                            ),
                          )
                              .toList(),
                          onChanged: (value) {
                           if( value=='Both')
                             {

                             }
                            logSignController.filter.value=value!;
                          },
                        ),
                      ),
                    ), ),
                  ],
                ),
              ),),
             Obx(()=> SizedBox(
               height: 400.h, width: MediaQuery.of(context).size.width,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 physics: BouncingScrollPhysics(),
                 itemBuilder: (context, index) {
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                         height: 400.h,width: 300.w,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(15),
                             color: Colors.white
                         ),
                         child: Stack(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15),),
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(15),
                                 child: Image.network(logSignController.filter.value=='Online'?logSignController.profileList[index]['image']:logSignController.profileList2[index]['image'],
                                   height: 400.h,width: 300.w,fit: BoxFit.cover,),
                               ),
                             ),
                             Container(
                               height: 400.h,width: 300.w,
                               decoration: BoxDecoration(
                                 gradient: LinearGradient(
                                   begin: Alignment.topCenter,
                                   end: Alignment.bottomCenter,
                                   colors: [
                                     logoblue.withOpacity(0.2),
                                     logoblue,
                                   ],
                                 ),
                                 color: Colors.blue.withOpacity(0.7),
                                 borderRadius: BorderRadius.circular(15),),
                             ),
                             Positioned(
                               top:4,right:4,
                               child: Container(
                                 decoration: BoxDecoration(
                                   border:Border.all(width: 0.5),
                                   color:Colors.lightGreen.withOpacity(0.5),
                                   borderRadius: BorderRadius.circular(15),),
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("Active 10 minutes ago",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Colors.white),),
                                 ),
                               ),
                             ),
                             Positioned(
                               bottom:60,left:4,
                               child: Container(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text(logSignController.filter.value=='Online'?logSignController.profileList[index]['name']:logSignController.profileList2[index]['name'],style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700,color: Colors.black),),
                                 ),
                               ),
                             ),
                             Positioned(
                               bottom:10,left:4,
                               child: Container(
                                 child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       children: [
                                         IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 35.sp,color: Colors.white,)),
                                         SizedBox(width: 15.w,),
                                         IconButton(onPressed: (){}, icon: Icon(Icons.chat,size: 35.sp,color: Colors.white,))

                                       ],
                                     )
                                 ),
                               ),
                             ),
                           ],
                         )
                     ),
                   );
                 },
                 itemCount: logSignController.filter.value=='Online'?logSignController.profileList.length:logSignController.profileList2.length,
               ),
             ),)
            ],
          ),
        ),
      )
    ));
  }
}

