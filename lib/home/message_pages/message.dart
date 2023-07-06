import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mychat01/home/message_pages/sent_help_message.dart';
import 'package:mychat01/home/message_pages/sent_message.dart';


import '../../../utils/colors.dart';
import '../../utils/const.dart';

class Message extends StatefulWidget {
  static const String routeName='/message';
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 108.68.h,
        backgroundColor: const Color(0xFFFBFBFB),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                    )),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, HelpMessage.routeName);
                        },
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(
                          Icons.help_outline,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.black,
                        )),
                  ],
                )
              ],
            ),
            TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorColor: themeColorBlue,
              indicatorWeight: 1,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.grey,
              labelPadding: EdgeInsets.symmetric(horizontal: 55.w),
              tabs: [
                Tab(
                  child: Text(
                    'Message',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp),
                  ),
                ),
                Tab(
                  child: Text('Group/Event',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp)),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 200,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFFFFFFF),
        child: TabBarView(
          controller: _tabController,
          children: [
            SizedBox(
              height: 70.h,
              width: MediaQuery.of(context).size.width - 28,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, SentMessage.routeName);
                      },
                      child: ListTile(
                        leading: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: Image.network(
                              'https://media.istockphoto.com/id/1289221210/photo/positive-young-woman-thinking.webp?b=1&s=170667a&w=0&k=20&c=U3c64ytrR3kj9p4U5wANjlk5Riot2tYsYN2UrjufVZs=',
                              height: 50.h,
                              width: 50.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          'Andrew Brok',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                            description.length > 42
                                ? '${description.substring(0, 42)}...'
                                : description,
                            style: TextStyle(
                              fontSize: 14.sp,
                            )),
                        trailing: Text(
                          '34m',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 70.h,
              width: MediaQuery.of(context).size.width - 28,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: ListTile(
                        leading: SizedBox(
                          width: 39.w,
                          height: 39.h,
                          child: Container(
                            width: 39.w,
                            height: 39.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(90),
                              child: Image.network(
                                "https://img.freepik.com/free-photo/happy-joyful-friends-talking-laughing_1262-21146.jpg",
                                height: 39.h,
                                width: 39.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          'Group Name',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                            description.length > 42
                                ? '${description.substring(0, 42)}...'
                                : description,
                            style: TextStyle(
                              fontSize: 14.sp,
                            )),
                        trailing: Text(
                          '34m',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
