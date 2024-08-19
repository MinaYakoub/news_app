import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  Dio dio;
  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=f47c3c3779f34ce0b874236947584dfd");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articlesList.add(articleModel);
    }
  print(articlesList);
    return articlesList;
  }
}
