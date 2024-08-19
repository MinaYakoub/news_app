import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/news_list.dart';
import '../models/article_model.dart';
import '../services/news_service.dart';

class NewsListBuilder extends StatefulWidget {
  NewsListBuilder({required this.category});
  String category ;
  @override

  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  // bool isLoading = true;
  // List<ArticleModel> articles = [];
  var future;
  @override
  void initState() {
    Dio dio = Dio();
    future = NewsService(dio: dio).getNews(category: widget.category);

    // TODO: implement initState
    super.initState();
  }

  // Future<void> getGeneralNews(Dio dio) async {
  //   articles = await NewsService(dio: dio).getNews();
  //   isLoading = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return NewsList(
            articles: snapShot.data ?? [],
          );
        } else if (snapShot.hasError) {
          return Center(
            child: SliverToBoxAdapter(
              child: Text("errorrrrrrrrrrrr !!!!!"),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
