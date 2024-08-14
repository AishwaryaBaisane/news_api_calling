import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api_calling/view/Detail_Page/detail_page.dart';
import 'package:news_api_calling/view/HomePAGE/homePage.dart';
import 'package:news_api_calling/view/NewsPage/news_page.dart';

import 'controller/news_controller.dart';

void main()
{
  runApp(MyApp());
}

NewsController _newsController = Get.put(NewsController());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => Homepage(),),
        GetPage(name: '/new', page: () => NewsPage(),),
        GetPage(name: '/detail', page: () => DetailPage(),),
      ],
    );
  }
}
