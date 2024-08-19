import 'package:flutter/material.dart';

import '../components/newsListBuilder.dart';

class CategoryNews extends StatelessWidget {
   CategoryNews({required this.category});
  static String routeName = "catn";
  String category ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
    body: CustomScrollView(
      slivers: [
        NewsListBuilder(category: category,),
      ],
    ),
    );
    
  }
}