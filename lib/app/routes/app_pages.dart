import 'package:flutter_kloop/app/modules/article/views/article_view.dart';
import 'package:flutter_kloop/app/modules/article/bindings/article_binding.dart';
import 'package:flutter_kloop/app/modules/home/views/home_view.dart';
import 'package:flutter_kloop/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.ARTICLE, 
      page:()=> ArticleView(), 
      binding: ArticleBinding(),
    ),
  ];
}