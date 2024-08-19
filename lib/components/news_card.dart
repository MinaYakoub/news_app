import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsCard extends StatelessWidget {
  NewsCard({required this.articleModel});
  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(60)),
      child: Column(
        children: [
          //  CachedNetworkImage(imageUrl: "${this.articleModel.image}" ,
          //  key: UniqueKey(),
          //  width: 330,
          //   height: 200,
          //   fit: BoxFit.fill,
          //   maxHeightDiskCache: 200,
          //   errorWidget: (context, url, error) =>  Center(child:
          //   Icon(Icons.error),),
          //   placeholder:(context, url) =>Container(color: Colors.black,width: 200,height: 200,) ,
          //  )

          articleModel.image != null
              ? Image.network(
                  "${this.articleModel.image}",
                  width: 330,
                  fit: BoxFit.scaleDown,
                  height: 200,
                  scale: 1.0,
                )
              : Image.asset("assets/error.png"),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Text(
              "${this.articleModel.title ?? "sss"}",
              maxLines: 2,
              style: TextStyle(
                  fontSize: 20,
                  overflow: TextOverflow.ellipsis,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Text(
              "${this.articleModel.subTitle ?? "www"}",
              maxLines: 2,
              style: TextStyle(
                  color: Colors.grey, overflow: TextOverflow.ellipsis),
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }
}
