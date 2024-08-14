// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../News_modal/news_modal.dart';
// import '../../controller/news_controller.dart';
//
// class Homepage extends StatelessWidget {
//   const Homepage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final NewsController newsController = Get.put(NewsController());
//     final NewsController2 newsController2 = Get.put(NewsController2());
//     // final NewsController3 newsController3 = Get.put(NewsController3());
//     // final NewsController4 newsController4 = Get.put(NewsController4());
//     // final NewsController5 newsController5 = Get.put(NewsController5());
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Homepage'),
//       ),
//       body: FutureBuilder<NewsModal?>(
//         future: newsController2.getNews(),
//         builder: (context, snapshot) {
//           NewsModal? apimodal = snapshot.data;
//           if (snapshot.hasData && snapshot.data != null) {
//             final newsModal = snapshot.data;
//             return Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     SelectData = newsController.toString();
//                   },
//                   child: Container(
//                     height: 100,
//                     width: 200,
//                     decoration: BoxDecoration(
//                       color: Colors.pink,
//                     ),
//                     child:
//                         Text(newsController.newsModal.value!.articles[0].title),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     SelectData = newsController2.toString();
//                   },
//                   child: Container(
//                     height: 100,
//                     width: 200,
//                     decoration: BoxDecoration(
//                       color: Colors.pink,
//                     ),
//                     child: Text(
//                         newsController2.newsModal.value!.articles[0].title),
//                   ),
//                 ),
//                 // InkWell(
//                 //   onTap: () {
//                 //     SelectData = newsController3.toString();
//                 //   },
//                 //   child: Container(
//                 //     height: 100,
//                 //     width: 200,
//                 //     decoration: BoxDecoration(
//                 //       color: Colors.pink,
//                 //     ),
//                 //     child: Text(newsController3.newsModal.value!.articles[0].title),
//                 //   ),
//                 // ),
//                 // InkWell(
//                 //   onTap: () {
//                 //     SelectData = newsController4.toString();
//                 //   },
//                 //   child: Container(
//                 //     height: 100,
//                 //     width: 200,
//                 //     decoration: BoxDecoration(
//                 //       color: Colors.pink,
//                 //     ),
//                 //     child: Text(newsController4.newsModal.value!.articles[0].title),
//                 //   ),
//                 // ),
//                 // InkWell(
//                 //   onTap: () {
//                 //     SelectData = newsController5.toString();
//                 //     Get.toNamed('/new');
//                 //   },
//                 //   child: Container(
//                 //     height: 100,
//                 //     width: 200,
//                 //     decoration: BoxDecoration(
//                 //       color: Colors.pink,
//                 //     ),
//                 //     child: Text(newsController5.newsModal.value!.articles[0].title),
//                 //   ),
//                 // )
//               ],
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return const Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//     );
//   }
// }
// //   final newsModal = newsController.newsModal.value;
// //           final anotherNewsModal = anotherNewsController.newsModal.value;
// //
// //           return ListView(
// //             children: [
// //               ...newsModal.articles.map((article) => ListTile(
// //                 title: Text(article.title),
// //                 subtitle: Text(article.description),
// //               )),
// //               Divider(),
// //               ...anotherNewsModal.articles.map((article) => ListTile(
// //                 title: Text(article.title),
// //                 subtitle: Text(article.description),
// //               )),
//
// String SelectData = '';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../News_modal/news_modal.dart';
import '../../controller/news_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
      appBar: AppBar(
        title: const Text('TabBar Sample'),
        // bottom: const TabBar(
        //   tabs: <Widget>[
        //     Tab(
        //       icon: Icon(Icons.cloud_outlined),
        //     ),
        //     Tab(
        //       icon: Icon(Icons.beach_access_sharp),
        //     ),
        //     Tab(
        //       icon: Icon(Icons.brightness_5_sharp),
        //     ),
        //   ],
        // ),
      ),
      body: FutureBuilder<NewsModal?>(
        future: newsController2.getNews(),
        builder: (context, snapshot) {
          NewsModal? apimodal = snapshot.data;
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData && snapshot.data != null) {
            final newsModal = snapshot.data!;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        SelectData = newsController.toString();
                        Get.toNamed('/new');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.3,
                          width: width * double.infinity,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)),
                            // color: Colors.pink,
                            image: DecorationImage(
                                image: NetworkImage(newsController
                                    .newsModal.value!.articles[0].urlToImage),
                                fit: BoxFit.cover,
                                opacity: 6.10),
                          ),
                          child: Text('aishawatya',style: TextStyle(fontSize: 40,color: Colors.pink),)
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        SelectData = newsController2.toString();
                        Get.toNamed('/new');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.3,
                          width: width * double.infinity,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)),
                            // color: Colors.pink,
                            image: DecorationImage(
                                image: NetworkImage(newsController2
                                    .newsModal.value!.articles[0].urlToImage),
                                fit: BoxFit.cover,
                                opacity: 6.10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  textAlign: TextAlign.start,
                                  newsController2
                                      .newsModal.value!.articles[0].author,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      shadows: [
                                        Shadow(
                                          color: Colors.white,
                                          blurRadius: 5,
                                        )
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     SelectData = newsController3.toString();
                    //     Get.toNamed('/new');
                    //   },
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Container(
                    //       height: height * 0.3,
                    //       width: width * double.infinity,
                    //       decoration: BoxDecoration(
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(15)),
                    //         // color: Colors.pink,
                    //         image: DecorationImage(
                    //             image: NetworkImage(newsController3
                    //                 .newsModal.value!.articles[0].url),
                    //             fit: BoxFit.cover,
                    //             opacity: 6.10),
                    //       ),
                    //       child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         children: [
                    //           Padding(
                    //             padding: const EdgeInsets.only(left: 10),
                    //             child: Text(
                    //               textAlign: TextAlign.start,
                    //               newsController3
                    //                   .newsModal.value!.articles[0].title,
                    //               style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontSize: 23,
                    //                   shadows: [
                    //                     Shadow(
                    //                       color: Colors.white,
                    //                       blurRadius: 5,
                    //                     )
                    //                   ]),
                    //             ),
                    //           ),
                    //           SizedBox(
                    //             height: height * 0.03,
                    //           )
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    InkWell(
                      onTap: () {
                        SelectData = newsController4.toString();
                        Get.toNamed('/new');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.3,
                          width: width * double.infinity,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)),
                            // color: Colors.pink,
                            image: DecorationImage(
                                image: NetworkImage(newsController4
                                    .newsModal.value!.articles[0].urlToImage),
                                fit: BoxFit.cover,
                                opacity: 6.10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  textAlign: TextAlign.start,
                                  newsController4
                                      .newsModal.value!.articles[0].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      shadows: [
                                        Shadow(
                                          color: Colors.white,
                                          blurRadius: 5,
                                        )
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        SelectData = newsController5.toString();
                        Get.toNamed('/new');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.3,
                          width: width * double.infinity,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)),
                            // color: Colors.pink,
                            image: DecorationImage(
                                image: NetworkImage(newsController5
                                    .newsModal.value!.articles[0].urlToImage),
                                fit: BoxFit.cover,
                                opacity: 6.10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  textAlign: TextAlign.start,
                                  newsController5
                                      .newsModal.value!.articles[0].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      shadows: [
                                        Shadow(
                                          color: Colors.white,
                                          blurRadius: 5,
                                        )
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Center(child: Text('No Data'));
          }
        },
      ),
    );
  }
}

String SelectData = '';
