import 'package:flutter/material.dart';
import 'package:flutter_kloop/app/data/model/articles.dart';
import 'package:flutter_kloop/app/routes/app_pages.dart';
import 'package:flutter_kloop/app/utils/request.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController urlTextController;
  ArticleModel article;

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

  void getArticleByUrl() async {
    article = ArticleModel(
      "Some title",
      "Анын ою боюнча, ЖЭБ дагы, жеке үйлөрдүн меши деле мынча кара түтүн пайда кыла алмак эмес, ал эми кара түтүндүн булагы болуп айылдардын айланасындагы өрттөлгөн аянттар эсептелет.",
      ['Article authors'],
      DateTime.now(),
    );
    Request request = Request(url: this.urlTextController.text);
    var data = await request.get();
    print(data.body);
    Get.toNamed(Routes.ARTICLE);
  }
}
