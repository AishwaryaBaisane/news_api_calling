import 'package:get/get.dart';
import 'package:news_api_calling/Api_helper/news_apihelper.dart';

import '../News_modal/news_modal.dart';


class NewsController extends GetxController
{
  ApiHelper apiHelper = ApiHelper();
  Rx<NewsModal?>  newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap1() async {
    try {
      final data = await apiHelper.api_helper1();
      newsModal.value = NewsModal.fromApi(data);
      print(newsModal.value!.articles.length);
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
  Rx<NewsModal?> teslaModal = Rx<NewsModal?>(null);
  // Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap2() async {
    try {
      final data = await apiHelper.api_helper2();
      teslaModal.value = NewsModal.fromApi(data);
      print(teslaModal.value);
    } catch (e) {
      print('Error fetching news: $e');

    }
  }
  Future<NewsModal?> getNews() async {
    return teslaModal.value;
  }
  NewsController2()
  {
    fromMap2();
  }
}
// //
//
class NewsController3 extends GetxController
{
  ApiHelper apiHelper = ApiHelper();
  Rx<NewsModal?> countryModal = Rx<NewsModal?>(null);
  // Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap3() async {
    try {
      final data = await apiHelper.api_helper3();
      countryModal.value = NewsModal.fromApi(data);
      print(countryModal.value);
    } catch (e) {
      print('Error fetching news: $e');

    }
  }
  Future<NewsModal?> getNews() async {
    return countryModal.value;
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
  Rx<NewsModal?>  headlinesModal = Rx<NewsModal?>(null);
  // Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap4() async {
    try {
      final data = await apiHelper.api_helper4();
      headlinesModal.value = NewsModal.fromApi(data);
      print(headlinesModal.value);
    } catch (e) {
      print('Error fetching news: $e');

    }
  }
  Future<NewsModal?> getNews() async {
    return headlinesModal.value;
  }
  NewsController4()
  {
    fromMap4();
  }
}

class NewsController5 extends GetxController
{
  ApiHelper apiHelper = ApiHelper();
  // Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);
  Rx<NewsModal?>  everythingModal = Rx<NewsModal?>(null);
  Future<void> fromMap5() async {
    try {
      final data = await apiHelper.api_helper5();
      everythingModal.value = NewsModal.fromApi(data);
      print(everythingModal.value);
    } catch (e) {
      print('Error fetching news: $e');

    }
  }
  Future<NewsModal?> getNews() async {
    return everythingModal.value;
  }
  NewsController5()
  {
    fromMap5();
  }
}