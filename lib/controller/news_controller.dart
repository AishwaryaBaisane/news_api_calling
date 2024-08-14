import 'package:get/get.dart';
import 'package:news_api_calling/Api_helper/news_apihelper.dart';

import '../News_modal/news_modal.dart';

class NewsController extends GetxController
{
  ApiHelper apiHelper = ApiHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);


  Future<void> fromMap1() async {
    try {
      final data = await apiHelper.api_helper1();
      newsModal.value = NewsModal.fromApi(data);
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');

    }
  }
  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }
  NewsController()
  {
    fromMap1();
  }
}

class NewsController2 extends GetxController
{
  ApiHelper apiHelper = ApiHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap2() async {
    try {
      final data = await apiHelper.api_helper2();
      newsModal.value = NewsModal.fromApi(data);
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');

    }
  }
  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }
  NewsController2()
  {
    fromMap2();
  }
}
//
//
class NewsController3 extends GetxController
{
  ApiHelper apiHelper = ApiHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap3() async {
    try {
      final data = await apiHelper.api_helper3();
      newsModal.value = NewsModal.fromApi(data);
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');

    }
  }
  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }
  NewsController3()
  {
    fromMap3();
  }
}
//
class NewsController4 extends GetxController
{
  ApiHelper apiHelper = ApiHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap4() async {
    try {
      final data = await apiHelper.api_helper4();
      newsModal.value = NewsModal.fromApi(data);
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');

    }
  }
  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }
  NewsController4()
  {
    fromMap4();
  }
}

class NewsController5 extends GetxController
{
  ApiHelper apiHelper = ApiHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap5() async {
    try {
      final data = await apiHelper.api_helper5();
      newsModal.value = NewsModal.fromApi(data);
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');

    }
  }
  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }
  NewsController5()
  {
    fromMap5();
  }
}