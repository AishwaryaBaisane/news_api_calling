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
                              ? newsController2.teslaModal.value!
                                  .articles[SelectIndex].urlToImage
                              : (SelectData == newsController3.toString())
                                  ? newsController3.countryModal.value!
                                      .articles[SelectIndex].urlToImage
                                  : (SelectData == newsController4.toString())
                                      ? newsController4.headlinesModal.value!
                                          .articles[SelectIndex].urlToImage
                                      : newsController5.everythingModal.value!
                                          .articles[SelectIndex].urlToImage),
                      fit: BoxFit.cover),
                ),
                
              ),
            ),
            Text(
              (SelectData == newsController.toString())
                  ? newsController
                  .newsModal.value!.articles[SelectIndex].source.name
                  : (SelectData == newsController2.toString())
                  ? newsController2
                  .teslaModal.value!.articles[SelectIndex].source.name
                  : (SelectData == newsController3.toString())
                  ? newsController3.countryModal.value!
                  .articles[SelectIndex].source.name
                  : (SelectData == newsController4.toString())
                  ? newsController4.headlinesModal.value!
                  .articles[SelectIndex].source.name
                  : newsController5.everythingModal.value!
                  .articles[SelectIndex].source.name,
            ),
            Text(
              (SelectData == newsController.toString())
                  ? newsController
                  .newsModal.value!.articles[SelectIndex].description
                  : (SelectData == newsController2.toString())
                  ? newsController2
                  .teslaModal.value!.articles[SelectIndex].description
                  : (SelectData == newsController3.toString())
                  ? newsController3.countryModal.value!
                  .articles[SelectIndex].description
                  : (SelectData == newsController4.toString())
                  ? newsController4.headlinesModal.value!
                  .articles[SelectIndex].description
                  : newsController5.everythingModal.value!
                  .articles[SelectIndex].description,
            ),
            Text(
              (SelectData == newsController.toString())
                  ? newsController
                  .newsModal.value!.articles[SelectIndex].content
                  : (SelectData == newsController2.toString())
                  ? newsController2
                  .teslaModal.value!.articles[SelectIndex].content
                  : (SelectData == newsController3.toString())
                  ? newsController3.countryModal.value!
                  .articles[SelectIndex].content
                  : (SelectData == newsController4.toString())
                  ? newsController4.headlinesModal.value!
                  .articles[SelectIndex].content
                  : newsController5.everythingModal.value!
                  .articles[SelectIndex].content,
            ),
          ],
        ),
      ),
    );
  }
}
