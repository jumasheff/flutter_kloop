import 'package:flutter/material.dart';
import 'package:flutter_kloop/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_kloop/app/modules/article/controllers/article_controller.dart';

class ArticleView extends GetView<ArticleController> {
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Article stats'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              '${_homeController.article.title}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${_homeController.article.text}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
