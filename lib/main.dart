import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/categortNews.dart';
import 'package:news_app/views/home_screen.dart';

void main() {
  NewsService(dio: Dio()).getNews(category: "general");
  runApp(const NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,


      routes: {
        HomeScreen.routeName:(context) => HomeScreen(), 
        
      },
    ) ;
  }
}