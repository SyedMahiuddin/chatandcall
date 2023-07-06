import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';

class SentMessage extends StatefulWidget {
  static const String routeName='/sentMessage';
  const SentMessage({Key? key}) : super(key: key);

  @override
  State<SentMessage> createState() => _SentMessageState();
}

class _SentMessageState extends State<SentMessage> {
  final textcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(toolbarHeight: 60,backgroundColor:const Color(0xFFFBFBFB),elevation: 0, automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.fromLTRB(0.w,18.h,10.w,8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){

                    },
                    padding:EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    icon: const Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
                SizedBox(width: 20.w,),
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network('https://media.istockphoto.com/id/1289221210/photo/positive-young-woman-thinking.webp?b=1&s=170667a&w=0&k=20&c=U3c64ytrR3kj9p4U5wANjlk5Riot2tYsYN2UrjufVZs=',height:30.h,width:30.w,fit: BoxFit.cover
                      ,),
                  ),
                ),
                SizedBox(width: 8.w,),
                Text('Andrew Brok',style: TextStyle(fontSize: 16.sp,color:Colors.black,fontWeight: FontWeight.w500),),
              ],
            ),
             Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.call,size: 25.sp,color: Colors.black,))
            ],
          )
          ],
        ),
      ),
      ),
      body:SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height-100,width: MediaQuery.of(context).size.width,),
           Positioned(
             top: 0.1.h,
               bottom: 60.h,
               left: 13.w,
               right: 13.w,
               child:  SizedBox(
                 width: 400,
                 child: ListView.builder(
                     scrollDirection: Axis.vertical,
                     itemCount: 5,
                     shrinkWrap: true,
                     reverse: true,
                     itemBuilder: (context, index){
                       return  Padding(
                         padding:  EdgeInsets.fromLTRB(0,10.h,0,10.h),
                         child: BubbleNormal(
                           bubbleRadius: 8,
                           text: index==4?'Hello':'Lorem ipsum dolor sit agggggggggggmet, consectetur adipiscing elit, sed do eiusmod temp',
                           isSender: index%2==0?true:false,
                           color: index%2==0?Color(0xFFD4E9F8):Color(0xFFF8F8F8),
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
      )
    );
  }
}
