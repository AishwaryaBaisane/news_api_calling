import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/news_controller.dart';
import '../HomePAGE/homePage.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: newsController.newsModal.value!.articles.length,
          itemBuilder: (context, index) => Column(
            children: [
              InkWell(
                onTap: () {
                  SelectIndex = index;
                  print(SelectIndex);
                  Get.toNamed('/detail');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * 0.3,
                    width: width * double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        image: NetworkImage((SelectData == newsController.toString())
                            ? newsController.newsModal.value!.articles[index].urlToImage
                            : (SelectData == newsController2.toString())
                                ? newsController2
                                    .newsModal.value!.articles[index].urlToImage
                                : (SelectData == newsController3.toString())
                                    ? newsController3
                                        .newsModal.value!.articles[index].urlToImage
                                    : (SelectData == newsController4.toString())
                                        ? newsController4
                                            .newsModal.value!.articles[index].urlToImage
                                        : newsController5
                                            .newsModal.value!.articles[index].urlToImage),fit: BoxFit.cover
                      ),
                    ),
                    child: Text((SelectData == newsController.toString())
                        ? newsController.newsModal.value!.articles[index].source.name
                        : (SelectData == newsController2.toString())
                            ? newsController2.newsModal.value!.articles[index].source.name
                            : (SelectData == newsController3.toString())
                                ? newsController3
                                    .newsModal.value!.articles[index].source.name
                                : (SelectData == newsController4.toString())
                                    ? newsController4
                                        .newsModal.value!.articles[index].source.name
                                    : newsController5
                                        .newsModal.value!.articles[index].source.name),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int SelectIndex = 0;