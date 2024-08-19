import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

import 'news_category.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});
  List<CategoryModel> newsCategoryList = [
    CategoryModel(newsTitle: "business", newsImage: "assets/business.jpeg"),
    CategoryModel(newsTitle: "entertainment", newsImage: "assets/business.jpeg"),
    CategoryModel(newsTitle: "health", newsImage: "assets/business.jpeg"),
    CategoryModel(newsTitle: "science", newsImage: "assets/business.jpeg"),
    CategoryModel(newsTitle: "sports", newsImage: "assets/business.jpeg"),
    CategoryModel(newsTitle: "technology", newsImage: "assets/business.jpeg"),
    CategoryModel(newsTitle: "general", newsImage: "assets/business.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: newsCategoryList.length,
        itemBuilder: (context, index) =>
            NewsCategory(newsModel: newsCategoryList[index]),
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
