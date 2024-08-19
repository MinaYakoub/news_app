import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/categortNews.dart';

class NewsCategory extends StatelessWidget {
  CategoryModel newsModel;
  NewsCategory({required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return CategoryNews(category: "${newsModel.newsTitle}");
          }));
          
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image.asset(
                  "${newsModel.newsImage}",
                  fit: BoxFit.fill,
                ),
                Container(
                  width: 190,
                  decoration: BoxDecoration(color: Color.fromARGB(57, 0, 0, 0)),
                ),
                Center(
                  widthFactor: 2.6,
                  child: Container(
                    child: Text(
                      newsModel.newsTitle,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
