
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api_calling/view/NewsPage/news_page.dart';

import '../../News_modal/news_modal.dart';
import '../../News_modal/news_modal.dart';
import '../../controller/news_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
     NewsController newsController = Get.put(NewsController());
     NewsController2 newsController2 = Get.put(NewsController2());
     NewsController3 newsController3 = Get.put(NewsController3());
     NewsController4 newsController4 = Get.put(NewsController4());
     NewsController5 newsController5 = Get.put(NewsController5());

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.account_circle, color: Colors.white, size: 30),
          title: Text('News', style: TextStyle(color: Colors.white)),
          actions: [
            Icon(Icons.grid_view_outlined, color: Colors.white)
          ],
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            indicatorPadding: EdgeInsets.zero,
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            isScrollable: true,
            indicatorColor: Colors.purple,
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Tesla'),
              Tab(text: 'Country'),
              Tab(text: 'Headline'),
              Tab(text: 'Apple'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            children: [
              FutureBuilder(
                future: newsController.fromMap1(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return mainBox(
                      width: width,
                      modal: newsController.newsModal,
                      fetchData: newsController.fromMap1(),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              FutureBuilder(
                future: newsController2.fromMap2(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return mainBox(
                      width: width,
                      modal: newsController2.teslaModal,
                      fetchData: newsController2.fromMap2(),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              FutureBuilder(
                future: newsController3.fromMap3(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return mainBox(
                      width: width,
                      modal: newsController3.countryModal,
                      fetchData: newsController3.fromMap3(),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              FutureBuilder(
                future: newsController4.fromMap4(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return mainBox(
                      width: width,
                      modal: newsController4.headlinesModal,
                      fetchData: newsController4.fromMap4(),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              FutureBuilder(
                future: newsController5.fromMap5(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return mainBox(
                      width: width,
                      modal: newsController5.everythingModal,
                      fetchData: newsController5.fromMap5(),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          currentIndex: SelectIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  ListView mainBox({
    required double width,
    required Rx<NewsModal?> modal,
    required Future<void> fetchData,
  }) {
    return ListView.builder(
      itemCount: modal.value!.articles.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          // detailHelper = fetchData;
          // detailList = modal;
          // selectedIndex = index;
          // Get.toNamed('/detail');
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                (modal.value!.articles[index].urlToImage == '')
                    ? 'Not Found'
                    : modal.value!.articles[index].urlToImage,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  modal.value!.articles[index].source.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  modal.value!.articles[index].title,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share, color: Colors.white),
                  SizedBox(width: 40),
                  Icon(Icons.bookmark_border, color: Colors.white),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}


    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('TabBar Sample'),
    //     // bottom: const TabBar(
    //     //   tabs: <Widget>[
    //     //     Tab(
    //     //       icon: Icon(Icons.cloud_outlined),
    //     //     ),
    //     //     Tab(
    //     //       icon: Icon(Icons.beach_access_sharp),
    //     //     ),
    //     //     Tab(
    //     //       icon: Icon(Icons.brightness_5_sharp),
    //     //     ),
    //     //   ],
    //     // ),
    //   ),
    //   body: FutureBuilder<NewsModal?>(
    //     future: newsController2.getNews(),
    //     builder: (context, snapshot) {
    //       NewsModal? apimodal = snapshot.data;
    //       if (snapshot.hasError) {
    //         return Center(child: Text('Error: ${snapshot.error}'));
    //       } else if (snapshot.hasData && snapshot.data != null) {
    //         final newsModal = snapshot.data!;
    //         return SingleChildScrollView(
    //           child: Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 InkWell(
    //                   onTap: () {
    //                     SelectData = newsController.toString();
    //                     Get.toNamed('/new');
    //                   },
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Container(
    //                       height: height * 0.3,
    //                       width: width * double.infinity,
    //                       decoration: BoxDecoration(
    //                         borderRadius:
    //                             BorderRadius.all(Radius.circular(15)),
    //                         // color: Colors.pink,
    //                         image: DecorationImage(
    //                             image: NetworkImage(newsController
    //                                 .newsModal.value!.articles[0].urlToImage),
    //                             fit: BoxFit.cover,
    //                             opacity: 6.10),
    //                       ),
    //                       child:Column(
    //                         mainAxisAlignment: MainAxisAlignment.end,
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10),
    //                             child: Text(
    //                               textAlign: TextAlign.start,
    //                               newsController
    //                                   .newsModal.value!.articles[0].title,
    //                               style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 23,
    //                                   shadows: [
    //                                     Shadow(
    //                                       color: Colors.white,
    //                                       blurRadius: 5,
    //                                     )
    //                                   ]),
    //                             ),
    //                           ),
    //                           SizedBox(
    //                             height: height * 0.03,
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 InkWell(
    //                   onTap: () {
    //                     SelectData = newsController2.toString();
    //                     Get.toNamed('/new');
    //                   },
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Container(
    //                       height: height * 0.3,
    //                       width: width * double.infinity,
    //                       decoration: BoxDecoration(
    //                         borderRadius:
    //                             BorderRadius.all(Radius.circular(15)),
    //                         // color: Colors.pink,
    //                         image: DecorationImage(
    //                             image: NetworkImage(newsController2
    //                                 .newsModal.value!.articles[0].urlToImage),
    //                             fit: BoxFit.cover,
    //                             opacity: 6.10),
    //                       ),
    //                       child: Column(
    //                         mainAxisAlignment: MainAxisAlignment.end,
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10),
    //                             child: Text(
    //                               textAlign: TextAlign.start,
    //                               newsController2
    //                                   .newsModal.value!.articles[0].author,
    //                               style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 23,
    //                                   shadows: [
    //                                     Shadow(
    //                                       color: Colors.white,
    //                                       blurRadius: 5,
    //                                     )
    //                                   ]),
    //                             ),
    //                           ),
    //                           SizedBox(
    //                             height: height * 0.03,
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 InkWell(
    //                   onTap: () {
    //                     SelectData = newsController3.toString();
    //                     Get.toNamed('/new');
    //                   },
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Container(
    //                       height: height * 0.3,
    //                       width: width * double.infinity,
    //                       decoration: BoxDecoration(
    //                         borderRadius:
    //                             BorderRadius.all(Radius.circular(15)),
    //                         // color: Colors.pink,
    //                         image: DecorationImage(
    //                             image: NetworkImage(newsController3
    //                                 .newsModal.value!.articles[0].urlToImage),
    //                             fit: BoxFit.cover,
    //                             opacity: 6.10),
    //                       ),
    //                       child: Column(
    //                         mainAxisAlignment: MainAxisAlignment.end,
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10),
    //                             child: Text(
    //                               textAlign: TextAlign.start,
    //                               newsController3
    //                                   .newsModal.value!.articles[0].title,
    //                               style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 23,
    //                                   shadows: [
    //                                     Shadow(
    //                                       color: Colors.white,
    //                                       blurRadius: 5,
    //                                     )
    //                                   ]),
    //                             ),
    //                           ),
    //                           SizedBox(
    //                             height: height * 0.03,
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 InkWell(
    //                   onTap: () {
    //                     SelectData = newsController4.toString();
    //                     Get.toNamed('/new');
    //                   },
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Container(
    //                       height: height * 0.3,
    //                       width: width * double.infinity,
    //                       decoration: BoxDecoration(
    //                         borderRadius:
    //                             BorderRadius.all(Radius.circular(15)),
    //                         // color: Colors.pink,
    //                         image: DecorationImage(
    //                             image: NetworkImage(newsController4
    //                                 .newsModal.value!.articles[0].urlToImage),
    //                             fit: BoxFit.cover,
    //                             opacity: 6.10),
    //                       ),
    //                       child: Column(
    //                         mainAxisAlignment: MainAxisAlignment.end,
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10),
    //                             child: Text(
    //                               textAlign: TextAlign.start,
    //                               newsController4
    //                                   .newsModal.value!.articles[0].title,
    //                               style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 23,
    //                                   shadows: [
    //                                     Shadow(
    //                                       color: Colors.white,
    //                                       blurRadius: 5,
    //                                     )
    //                                   ]),
    //                             ),
    //                           ),
    //                           SizedBox(
    //                             height: height * 0.03,
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 InkWell(
    //                   onTap: () {
    //                     SelectData = newsController5.toString();
    //                     Get.toNamed('/new');
    //                   },
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Container(
    //                       height: height * 0.3,
    //                       width: width * double.infinity,
    //                       decoration: BoxDecoration(
    //                         borderRadius:
    //                             BorderRadius.all(Radius.circular(15)),
    //                         // color: Colors.pink,
    //                         image: DecorationImage(
    //                             image: NetworkImage(newsController5
    //                                 .newsModal.value!.articles[0].urlToImage),
    //                             fit: BoxFit.cover,
    //                             opacity: 6.10),
    //                       ),
    //                       child: Column(
    //                         mainAxisAlignment: MainAxisAlignment.end,
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 10),
    //                             child: Text(
    //                               textAlign: TextAlign.start,
    //                               newsController5
    //                                   .newsModal.value!.articles[0].title,
    //                               style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 23,
    //                                   shadows: [
    //                                     Shadow(
    //                                       color: Colors.white,
    //                                       blurRadius: 5,
    //                                     )
    //                                   ]),
    //                             ),
    //                           ),
    //                           SizedBox(
    //                             height: height * 0.03,
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         );
    //       } else {
    //         return const Center(child: Text('No Data'));
    //       }
    //     },
    //   ),
    // );


String SelectData = '';
