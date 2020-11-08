class ArticlesListModel {
  final List<ArticleModel> articles;

  ArticlesListModel(this.articles);

  void fetchArticle(String url) {
    ArticleModel article = ArticleModel(
      "some title",
      "Text of the article",
      ["First Author"],
      DateTime.now(),
    );
    this.articles.add(article);
  }
}

class ArticleModel {
  final String title;
  final String text;
  final List<String> authors;
  final DateTime publishedAt;

  ArticleModel(this.title, this.text, this.authors, this.publishedAt);
}
