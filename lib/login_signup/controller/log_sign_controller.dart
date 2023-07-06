import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LogSignController extends GetxController{
 List<Map<String, dynamic>> profileList = [
  {
   'name': 'Alice',
   'image': 'https://images.squarespace-cdn.com/content/v1/5cf03d178eee6100013ee5fb/1666351754218-PJUEIGDO9MGZ7EA611IE/unnamed-1.jpg',
  },
  {
   'name': 'Emma',
   'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToUaclO02uALkiwJe_51dbH8SphFEYIVfwfhDPikjn92ymYNVLntsHJ-TUeDL4L_gZioc&usqp=CAU',
  },
  {
   'name': 'Olivia',
   'image': 'https://assets.teenvogue.com/photos/647e31425bfadf6fe044d0fd/16:9/w_2560%2Cc_limit/GettyImages-1474475997%2520(1).jpg',
  },
  {
   'name': 'Sophia',
   'image': 'https://www.aurumbureau.com/wp-content/uploads/2019/03/Aurum-Speakers-Bureau-Robot-Sophia.jpg',
  },
  {
   'name': 'Isabella',
   'image': 'https://images.squarespace-cdn.com/content/v1/61f2310bd31be73221ed7dd3/3dd62369-ed41-4522-96d6-e880d2135d60/Isabella+5796_web.jpg',
  },
 ];

 List<Map<String, dynamic>> profileList2 = [
  {
   'name': 'Abraham Linkon',
   'image': 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Abraham_Lincoln_O-77_matte_collodion_print.jpg/330px-Abraham_Lincoln_O-77_matte_collodion_print.jpg',
  },
  {
   'name': 'Emma',
   'image': 'https://th-thumbnailer.cdn-si-edu.com/NvOW1i8ylC4QoU8Tpuy0penjYOk=/1072x720/filters:no_upscale():focal(407x175:408x176)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/d5/0a/d50adbf8-ff9f-4276-95bb-3cd1d7747cac/still-from-emma.jpg',
  },
  {
   'name': 'Leoke John',
   'image': 'https://investors.ibex.co/system/files-encrypted/styles/large/encrypt/nasdaq_kms/people/2021/01/06/14-55-09/john-leone.jpg?itok=bpMnEzb0',
  },
 ];


 final TextEditingController mailController=TextEditingController();
 final TextEditingController passController=TextEditingController();
 var logpassVisible=false.obs;

 var filter = 'Online'.obs;
 List<String> filters = [
  'Online',
  'Nearby',
  'Both'
 ];
}