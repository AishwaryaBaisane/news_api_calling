import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api_calling/view/NewsPage/news_page.dart';

import '../../controller/news_controller.dart';
import '../HomePAGE/homePage.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final NewsController newsController = Get.put(NewsController());
    final NewsController2 newsController2 = Get.put(NewsController2());
    final NewsController3 newsController3 = Get.put(NewsController3());
    final NewsController4 newsController4 = Get.put(NewsController4());
    final NewsController5 newsController5 = Get.put(NewsController5());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.3,
                width: width * double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: NetworkImage((SelectData ==
                              newsController.toString())
                          ? newsController
                              .newsModal.value!.articles[SelectIndex].urlToImage
                          : (SelectData == newsController2.toString())
                              ? newsController2.newsModal.value!
                                  .articles[SelectIndex].urlToImage
                              : (SelectData == newsController3.toString())
                                  ? newsController3.newsModal.value!
                                      .articles[SelectIndex].urlToImage
                                  : (SelectData == newsController4.toString())
                                      ? newsController4.newsModal.value!
                                          .articles[SelectIndex].urlToImage
                                      : newsController5.newsModal.value!
                                          .articles[SelectIndex].urlToImage),
                      fit: BoxFit.cover),
                ),
                child: Text(newsController
                    .newsModal.value!.articles[SelectIndex].author.toString(),style: TextStyle(fontSize: 40,color: Colors.black87),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
