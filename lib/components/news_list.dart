import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';

class NewsList extends StatelessWidget {
  bool isLoading = true;
  List<ArticleModel> articles = [];
  NewsList({ required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return NewsCard(
                  articleModel: articles[index],
                );
              },
            ),
          );
  }
}
