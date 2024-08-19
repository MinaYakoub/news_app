import 'package:flutter/material.dart';
import 'package:news_app/components/category_list.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/components/news_category.dart';
import 'package:news_app/components/news_list.dart';

import '../components/newsListBuilder.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "News",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                "Cloud.",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          centerTitle: true,
          elevation: 10,
          backgroundColor: Colors.white,
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryList(),
            ),
            NewsListBuilder(category: "general",)
          ],
        )

        // ListView(
        //   children: [
        //     CategoryList(),
        //       SizedBox(
        //         height: 100,
        //         child: NewsList(),
        //       )

        //   ],
        // ),
        );
  }
}

