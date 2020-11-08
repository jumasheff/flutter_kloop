import 'package:get/get.dart';

import 'package:flutter_kloop/app/modules/article/controllers/article_controller.dart';

class ArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArticleController>(
      () => ArticleController(),
    );
  }
}
