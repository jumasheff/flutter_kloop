import 'package:flutter/material.dart';
import 'package:flutter_kloop/app/data/model/articles.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController urlTextController;
  final articlesList = List<ArticleModel>().obs;

  @override
  void onInit() {
    urlTextController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    urlTextController?.dispose();
    super.onClose();
  }

  void getArticleByUrl() {
    print(urlTextController.text);
    ArticleModel article = ArticleModel(
      "Some title",
      "Some text",
      ['Article authors'],
      DateTime.now(),
    );
    articlesList.value = [article];
    print(articlesList.value);
  }
}
